library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity draw_line is
    generic (width_x  : integer := 20;
             length_y : integer := 20);
    Port (x0  : in integer range 0 to width_x;
          y0  : in integer range 0 to length_y;
          x1  : in integer range 0 to width_x;
          y1  : in integer range 0 to length_y;
          clk : in std_logic;
          reset : in std_logic;
          start_drawing : in std_logic;
          x : buffer integer range 0 to width_x;
          y : buffer integer range 0 to length_y;
          fill_rom : out std_logic
          );
end draw_line;

architecture Behavioral of draw_line is

subtype tmp is std_logic_vector(0 to length_y);
type memory is array (natural range <>) of tmp;

signal frame_buffer : memory (0 to width_x);

type states is (idle , determine_octant , calculating_parameters , draw_first_bit , draw_pixels , draw_last_bit , done);
type point  is array (0 to 1) of integer range 0 to (width_x + length_y);
shared variable current_state : states;
shared variable start_point : point;
shared variable end_point   : point;
shared variable dx  : integer range 0 to width_x;
shared variable dx2 : integer range 0 to 2*width_x;
shared variable dy  : integer range 0 to length_y;
shared variable dy2 : integer range 0 to 2*length_y;
shared variable dy2_dx2 : integer range 0 to length_y;
shared variable p   : integer range 0 to 2*length_y;
shared variable iterations : integer range 0 to width_x;
shared variable counts     : integer range 0 to width_x;
shared variable octant     : integer range 0 to 7;
shared variable tmp_x  : integer range 0 to (width_x + length_y);
shared variable tmp_x0 : integer range 0 to (width_x + length_y);
shared variable tmp_x1 : integer range 0 to (width_x + length_y);
shared variable tmp_y  : integer range 0 to (width_x + length_y);
shared variable tmp_y0 : integer range 0 to (width_x + length_y);
shared variable tmp_y1 : integer range 0 to (width_x + length_y);
shared variable tmp_dx : integer range 0 to (width_x + length_y);
shared variable tmp_dy : integer range 0 to (width_x + length_y);
shared variable tmp_dx2 : integer range 0 to (width_x + length_y);
shared variable tmp_dy2 : integer range 0 to (width_x + length_y);
shared variable tmp_dy2_dx2 : integer range 0 to (width_x + length_y);
shared variable tmp_p : integer range 0 to (width_x + length_y);

begin

process (clk) begin

    if (rising_edge(clk)) then
        if (reset = '1') then
            x <= 0;
            y <= 0;
            current_state := idle;
            start_point(0) := 0;
            start_point(1) := 0;
            end_point(0)   := 0;
            end_point(1)   := 0;
            dx := 0;
            dy := 0;
            dx2 := 0;
            dy2 := 0;
            dy2_dx2 := 0;
            p := 0;
            iterations := 0;
            counts := 0;
            octant := 0;
            tmp_x0 := 0;
            tmp_y0 := 0;
            tmp_x1 := 0;
            tmp_y1 := 0;
            tmp_x := 0;
            tmp_y := 0;
            tmp_dx := 0;
            tmp_dx2 := 0;
            tmp_dy := 0;
            tmp_dy2 := 0;
            tmp_dy2_dx2 := 0;
            tmp_p := 0;
            for i in width_x downto 0 loop
                        frame_buffer(i) <= (others => '0');
            end loop;
            fill_rom <= '0';
        else
        case current_state is
            when idle =>
                fill_rom <= '0';
                x <= 0;
                y <= 0;
                start_point(0) := 0;
                start_point(1) := 0;
                end_point(0)   := 0;
                end_point(1)   := 0;
                dx := 0;
                dy := 0;
                dx2 := 0;
                dy2 := 0;
                dy2_dx2 := 0;
                p := 0;
                iterations := 0;
                counts := 0;
                octant := 0;
                for i in width_x downto 0 loop
                        frame_buffer(i) <= (others => '0');
                end loop;
                if (start_drawing = '1') then
                    start_point(0) := x0;
                    start_point(1) := y0;
                    end_point(0)   := x1;
                    end_point(1)   := y1;
                    current_state := calculating_parameters;
                end if;
            when calculating_parameters =>
                dx := end_point(0) - start_point(0);
                dy := end_point(1) - start_point(1);
                dx2 := 2 * dx;
                dy2 := 2 * dy;
                dy2_dx2 := dy2 - dx2;
                p := dy2 - dx;
                if (p > 0) then
                    p := p + dy2_dx2;
                else
                    p := p + dy2;
                end if;
                iterations := dx;
                x <= start_point(0);
                y <= start_point(1);
                counts := 0;
                current_state := determine_octant;
            when determine_octant =>
                if (dx >= 0 and dy >= 0)then    -- (+ , +)
                    --1st quadrant
                    if(abs(dx) > abs(dy))then
                        --1st octant
                        octant := 0;
                        -- x <= x & y <= y
                        tmp_x0 := start_point(0);
                        tmp_y0 := start_point(1);
                        tmp_x1 := end_point(0);
                        tmp_y1 := end_point(1);
                        tmp_x := tmp_x0;
                        tmp_y := tmp_y0;
                        tmp_dx := tmp_x1 - tmp_x0;
                        tmp_dy := tmp_y1 - tmp_y0;
                        tmp_dx2 := 2 * tmp_dx;
                        tmp_dy2 := 2 * tmp_dy;
                        tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                        tmp_p := tmp_dy2 - tmp_dx;
                        iterations := tmp_dx;
                    else
                        --2nd octant
                        octant := 1;
                        -- x <= y & y <= x
                        tmp_x0 := start_point(1);
                        tmp_y0 := start_point(0);
                        tmp_x1 := end_point(1);
                        tmp_y1 := end_point(0);
                        tmp_x := tmp_x0;
                        tmp_y := tmp_y0;
                        tmp_dx := tmp_x1 - tmp_x0;
                        tmp_dy := tmp_y1 - tmp_y0;
                        tmp_dx2 := 2 * tmp_dx;
                        tmp_dy2 := 2 * tmp_dy;
                        tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                        tmp_p := tmp_dy2 - tmp_dx;
                        iterations := tmp_dx;
                    end if; 
                elsif (dx < 0 and dy >= 0)then  -- (- , +)
                    --2nd quadrant
                    if (abs(dy) > abs(dx))then
                        --3rd octant
                        octant := 2;
                        -- x <= y & y <= -x
                        tmp_x0 := start_point(1);
                        tmp_y0 := -start_point(0);
                        tmp_x1 := end_point(1);
                        tmp_y1 := -end_point(0);
                        tmp_x := tmp_x0;
                        tmp_y := tmp_y0;
                        tmp_dx := tmp_x1 - tmp_x0;
                        tmp_dy := tmp_y1 - tmp_y0;
                        tmp_dx2 := 2 * tmp_dx;
                        tmp_dy2 := 2 * tmp_dy;
                        tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                        tmp_p := tmp_dy2 - tmp_dx;
                        iterations := tmp_dx;
                    else
                        --4th octant
                        octant := 3;
                        -- x <= -x & y <= y
                        tmp_x0 := -start_point(0);
                        tmp_y0 := start_point(1);
                        tmp_x1 := -end_point(0);
                        tmp_y1 := end_point(1);
                        tmp_x := tmp_x0;
                        tmp_y := tmp_y0;
                        tmp_dx := tmp_x1 - tmp_x0;
                        tmp_dy := tmp_y1 - tmp_y0;
                        tmp_dx2 := 2 * tmp_dx;
                        tmp_dy2 := 2 * tmp_dy;
                        tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                        tmp_p := tmp_dy2 - tmp_dx;
                        iterations := tmp_dx;
                    end if;
                elsif (dx < 0 and dy < 0)then   -- (- , -)
                    --3rd quadrant
                    if (abs(dx) > abs(dy))then
                        --5th octant
                        octant := 4;
                        -- x <= -x & y <= -y
                        tmp_x0 := -start_point(0);
                        tmp_y0 := -start_point(1);
                        tmp_x1 := -end_point(0);
                        tmp_y1 := -end_point(1);
                        tmp_x := tmp_x0;
                        tmp_y := tmp_y0;
                        tmp_dx := tmp_x1 - tmp_x0;
                        tmp_dy := tmp_y1 - tmp_y0;
                        tmp_dx2 := 2 * tmp_dx;
                        tmp_dy2 := 2 * tmp_dy;
                        tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                        tmp_p := tmp_dy2 - tmp_dx;
                        iterations := tmp_dx;
                    else
                        --6th octant
                        octant := 5;
                        -- x <= -y & y <= -x
                        tmp_x0 := -start_point(1);
                        tmp_y0 := -start_point(0);
                        tmp_x1 := -end_point(1);
                        tmp_y1 := -end_point(0);
                        tmp_x := tmp_x0;
                        tmp_y := tmp_y0;
                        tmp_dx := tmp_x1 - tmp_x0;
                        tmp_dy := tmp_y1 - tmp_y0;
                        tmp_dx2 := 2 * tmp_dx;
                        tmp_dy2 := 2 * tmp_dy;
                        tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                        tmp_p := tmp_dy2 - tmp_dx;
                        iterations := tmp_dx;
                    end if;
                else                            -- (+ , -)
                    --4th quadrant
                        if (abs(dy) > abs(dx))then
                            --7th octant
                            octant := 6;
                            -- x <= -y & y <= x
                            tmp_x0 := -start_point(1);
                            tmp_y0 := start_point(0);
                            tmp_x1 := -end_point(1);
                            tmp_y1 := end_point(0);
                            tmp_x := tmp_x0;
                            tmp_y := tmp_y0;
                            tmp_dx := tmp_x1 - tmp_x0;
                            tmp_dy := tmp_y1 - tmp_y0;
                            tmp_dx2 := 2 * tmp_dx;
                            tmp_dy2 := 2 * tmp_dy;
                            tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                            tmp_p := tmp_dy2 - tmp_dx;
                            iterations := tmp_dx;
                        else
                            --8th octant
                            octant := 7;
                            -- x <= x & y <= -y
                            tmp_x0 := start_point(0);
                            tmp_y0 := -start_point(1);
                            tmp_x1 := end_point(0);
                            tmp_y1 := -end_point(1);
                            tmp_x := tmp_x0;
                            tmp_y := tmp_y0;
                            tmp_dx := tmp_x1 - tmp_x0;
                            tmp_dy := tmp_y1 - tmp_y0;
                            tmp_dx2 := 2 * tmp_dx;
                            tmp_dy2 := 2 * tmp_dy;
                            tmp_dy2_dx2 := tmp_dy2 - tmp_dx2;
                            tmp_p := tmp_dy2 - tmp_dx;
                            iterations := tmp_dx;
                        end if;
                end if;
                current_state := draw_first_bit;
                fill_rom <= '1';
            when draw_first_bit =>
                frame_buffer(start_point(0))(start_point(1)) <= '1';
                current_state := draw_pixels;
            when draw_pixels =>
                frame_buffer(x)(y) <= '1';
                case octant is
                    when 0 =>
                        counts := counts + 1;
                        tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                        x <= tmp_x;
                        y <= tmp_y;
                    when 1 =>
                            counts := counts + 1;
                            tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                        x <= tmp_y;
                        y <= tmp_x;
                    when 2 =>
                        counts := counts + 1;
                        tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                        x <= -tmp_y;
                        y <= tmp_x;
                    when 3 =>
                        counts := counts + 1;
                        tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                            x <= -tmp_x;
                            y <= tmp_y;
                    when 4 =>
                        counts := counts + 1;
                        tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                        x <= -tmp_x;
                        y <= -tmp_y;
                    when 5 =>
                        counts := counts + 1;
                        tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                        x <= -tmp_y;
                        y <= -tmp_x;
                    when 6 =>
                        counts := counts + 1;
                        tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                        x <= tmp_y;
                        y <= -tmp_x;
                    when others =>
                        counts := counts + 1;
                        tmp_x := tmp_x + 1;
                        if (tmp_p > 0) then
                            tmp_y := tmp_y + 1;
                            tmp_p := tmp_p + tmp_dy2_dx2;
                        else
                            tmp_p := tmp_p + tmp_dy2;
                        end if;
                        if (counts = iterations)then
                            current_state := draw_last_bit;
                            counts := 0;
                        end if;
                        x <= tmp_x;
                        y <= -tmp_y;
                end case;
            when draw_last_bit =>
                    frame_buffer(end_point(0))(end_point(1)) <= '1';
                current_state := done;
            when done =>
                current_state := idle;
                fill_rom <= '0';
            when others =>
                current_state := idle;
            end case;
        end if;
    end if;
end process;

end Behavioral;
