library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;



-- Declaración de la entidad
entity SensorPresencia is
    Port (
        Trigger : out std_logic;
        Echo    : in std_logic;
        Presence: out std_logic
    );
end entity SensorPresencia;

-- Implementación de la arquitectura
architecture Behavioral of SensorPresencia is
    signal Timer       : integer := 0;
    signal Distance_cm : integer := 0;
begin
    -- Proceso para generar el pulso de activación
    process
    begin
        Trigger <= '0'; -- Inicialmente en bajo
        wait for 10 ns; -- Espera mínima del pulso
        Trigger <= '1'; -- Pulso de activación
        wait for 10 ns; -- Duración del pulso
        Trigger <= '0'; -- Volver a bajo
        wait for 1 ms;  -- Espera adicional para evitar falsos disparos
        wait;
    end process;

    -- Proceso para medir la distancia en función del tiempo de eco
    process
    begin
        wait until Echo'event and Echo = '1'; -- Espera el flanco de subida del eco
        Timer <= 0; -- Reinicia el temporizador
        loop -- Ciclo para medir el tiempo de eco
            wait for 1 ns;
            Timer <= Timer + 1; -- Incrementa el temporizador
            exit when Echo = '0'; -- Salir del ciclo cuando el eco vuelva a bajo
        end loop;
        -- Calcular la distancia en centímetros
        Distance_cm <= Timer * 340 / 10000; -- (Velocidad del sonido en cm/μs) * (Tiempo de eco en μs)
        if Distance_cm <= 100 then -- Establece un umbral de distancia de 100 cm
            Presence <= '1'; -- Hay presencia
        else
            Presence <= '0'; -- No hay presencia
        end if;
        wait;
    end process;
end architecture Behavioral;

