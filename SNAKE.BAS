
snakex = 160
snakey = 100

SCREEN 7 ' 320x200x16 without buffer, buffer compatible

DO
        PSET (snakex, snakey)
        snakex = snakex + 1
        PSET STEP(0, 0), 0
        PSET (snakex, snakey)

        key$ = INKEY$
        SELECT CASE key$ ' on esc exit
                
                CASE CHR$(27)
                        EXIT DO
        END SELECT

        FOR delay = 1 TO 5000: NEXT delay ' game clock

        IF snakex > 360 OR snakex < 0 THEN
                EXIT DO
        ELSE
LOOP


