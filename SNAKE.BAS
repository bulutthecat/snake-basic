
' system randomizer
RANDOMIZE TIMER

DIM snakey AS INTEGER
DIM snakex AS INTEGER

' The following values can either be 1 or 0

DIM upward AS INTEGER
DIM downward AS INTEGER
DIM left AS INTEGER
DIM right AS INTEGER

' initilize the 2D array (tuple 2x30)
DIM fruits(2, 30)  AS INTEGER

SCREEN 7 ' screen mode 7 (320x200x16) | supported buffers [not active]

snakey = 100
snakex = 160

upward = 1
downward = 0
left = 0
right = 0

FOR i = 1 TO 360



DO

        IF upward THEN
                PSET STEP(0, 1), 0
                snakex = snakex - 1
        ELSEIF downward THEN
                PSET STEP(0, -1), 0
                snakex = snakex + 1
        ELSEIF left THEN
                PSET STEP(1, 0), 0
                snakey = snakey - 1
        ELSEIF right THEN
                PSET STEP(-1, 0), 0
                snakey = snakey + 1
        END IF

        PSET (snakey, snakex), 24
        
        key$ = INKEY$ ' checking for key inputs
        SELECT CASE key$
                CASE "w"
                        upward = 1
                        downward = 0
                        left = 0
                        right = 0
                CASE "s"
                        upward = 0
                        downward = 1
                        left = 0
                        right = 0
                CASE "d"
                        upward = 0
                        downward = 0
                        left = 0
                        right = 1
                CASE "a"
                        upward = 0
                        downward = 0
                        left = 1
                        right = 0
                CASE CHR$(27)
                        EXIT DO
        END SELECT

        FOR delay = 1 TO 5000: NEXT delay
        CLS
LOOP

