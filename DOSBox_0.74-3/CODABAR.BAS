DIM P$(20), A$(20), G%(999)
FOR I = 1 TO 20
    READ X$
    A$(I) = LEFT$(X$, 1)
    X% = VAL("&H" + RIGHT$(X$, LEN(X$) - 1))
    FOR N% = 1 TO 7
        P$(I) = RIGHT$(STR$(X% MOD 2), 1) + P$(I)
        X% = X% \ 2
    NEXT N%
NEXT I
INPUT " Enter The Number : "; U$
U$ = "A" + U$ + "B"
FOR I = 1 TO LEN(U$)
    FOR J = 1 TO 20
        IF A$(J) = MID$(U$, I, 1) THEN F$ = F$ + P$(J) + "0"
    NEXT J
NEXT I
SCREEN 2
PRINT U$
GET (0, 0)-(8 * LEN(U$), 14), G%(LEN(U$) * 8)
PUT (0, 0), G%(LEN(U$) * 8), XOR
PAINT (0, 0)
FOR X = 1 TO LEN(F$)
    S = S + 2 * VAL(MID$(F$, X, 1))
NEXT X
Z = 320 - .5 * (LEN(F$) + S)
FOR I = 1 TO LEN(F$)
    FOR J = 0 TO 2 * VAL(MID$(F$, I, 1))
        LINE (Z, 5)-(Z, 25), I MOD 2 XOR 1
        Z = Z + 1
    NEXT J
NEXT I
PUT ((320 - LEN(U$) * 4), 30), G%(LEN(U$) * 8)
SLEEP
END ' codabar printer program.
DATA 03,16,29,360,412,542,621,724,830,948
DATA -c,$18,":45",/51,.54,+1f,A1a,Bb,C29,De

