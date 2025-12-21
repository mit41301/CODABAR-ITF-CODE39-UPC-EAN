Dim P$(&H0 To &H9), G%(&H3FF)
For I = &H2 To &H18 Step &H2
    If I = &HE Or I = &H16 Then I = &H2 + I
    Let N = I
    Let P = &H0
    Let Y = (&H1 + Y) Mod &HA
    For J = &H0 To &H3
        Let N = N \ &H2
        Let P = P Xor N Mod &H2
        Let P$(Y) = Left$(P$(Y), J) + Right$(Str$(N Mod &H2), &H1) + Right$(Str$(P), &H1)
    Next J
Next I
Input " Enter the No: "; U$
If Len(U$) Mod &H2 = &H1 Then U$ = Chr$(&H30) + U$
For K = &H1 To Len(U$) Step &H2
    For X = &H1 To &H5
        FP$ = FP$ + Mid$(P$(Val(Mid$(U$, K, &H1))), X, &H1) + Mid$(P$(Val(Mid$(U$, K + &H1, &H1))), X, &H1)
    Next X
Next K
Screen 2
Print U$
Get (&H0, &H0)-(&H8 * Len(U$), &HE), G%()
Put (&H0, &H0), G%(), Xor
Paint (&H0, &H0)
Let Z = &H140 - Int(((Len(U$) * &H9) + &H9) \ &H2)
For I = &H1 To &H7 + Len(FP$)
    For J = &H0 To &H2 * Val(Mid$("0000" + FP$ + "100", I, &H1))
        Line (Z, &H5)-(Z, &H19), I Mod &H2 Xor &H1
        Let Z = &H1 + Z
    Next J
Next I
Put (&H140 - (Int(Len(U$) * &H8) \ &H2), &H1E), G%()
Sleep
End
