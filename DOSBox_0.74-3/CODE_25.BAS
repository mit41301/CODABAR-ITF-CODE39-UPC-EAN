DIM P$(&H0 TO &H9), G%(&H3FF)
FOR I = &H2 TO &H18 STEP &H2
    IF I = &HE OR I = &H16 THEN I = &H2 + I
    LET N = I
    LET P = &H0
    LET Y = (&H1 + Y) MOD &HA
    FOR J = &H0 TO &H3
        LET N = N \ &H2
        LET P = P XOR N MOD &H2
        LET P$(Y) = LEFT$(P$(Y), J) + RIGHT$(STR$(N MOD &H2), &H1) + RIGHT$(STR$(P), &H1)
    NEXT J
NEXT I
INPUT " Enter the No: "; U$
IF LEN(U$) MOD &H2 = &H1 THEN U$ = CHR$(&H30) + U$
FOR K = &H1 TO LEN(U$) STEP &H2
    FOR X = &H1 TO &H5
        FP$ = FP$ + MID$(P$(VAL(MID$(U$, K, &H1))), X, &H1) + MID$(P$(VAL(MID$(U$, K + &H1, &H1))), X, &H1)
    NEXT X
NEXT K
SCREEN 2
PRINT U$
GET (&H0, &H0)-(&H8 * LEN(U$), &HE), G%(LEN(U$) * 8)
PUT (&H0, &H0), G%(LEN(U$) * 8), XOR
PAINT (&H0, &H0)
LET Z = &H140 - INT(((LEN(U$) * &H9) + &H9) \ &H2)
FOR I = &H1 TO &H7 + LEN(FP$)
    FOR J = &H0 TO &H2 * VAL(MID$("0000" + FP$ + "100", I, &H1))
        LINE (Z, &H5)-(Z, &H19), I MOD &H2 XOR &H1
        LET Z = &H1 + Z
    NEXT J
NEXT I
PUT (&H140 - (INT(LEN(U$) * &H8) \ &H2), &H1E), G%(LEN(U$) * 8)
SLEEP
END

