Dim P$(20), A$(20), G%(999)
For I = 1 To 20
    Read X$
    A$(I) = Left$(X$, 1)
    X% = Val("&H" + Right$(X$, Len(X$) - 1))
    For N% = 1 To 7
        P$(I) = Right$(Str$(X% Mod 2), 1) + P$(I)
        X% = X% \ 2
    Next N%
Next I
Input " Enter The Number : "; U$
U$ = "A" + U$ + "B"
For I = 1 To Len(U$)
    For J = 1 To 20
        If A$(J) = Mid$(U$, I, 1) Then F$ = F$ + P$(J) + "0"
    Next J
Next I
Screen 2
Print U$
Get (0, 0)-(8 * Len(U$), 14), G%()
Put (0, 0), G%(), Xor
Paint (0, 0)
For X = 1 To Len(F$)
    S = S + 2 * Val(Mid$(F$, X, 1))
Next X
Z = 320 - .5 * (Len(F$) + S)
For I = 1 To Len(F$)
    For J = 0 To 2 * Val(Mid$(F$, I, 1))
        Line (Z, 5)-(Z, 25), I Mod 2 Xor 1
        Z = Z + 1
    Next J
Next I
Put ((320 - Len(U$) * 4), 30), G%()
Sleep
End ' codabar printer program.
Data 03,16,29,360,412,542,621,724,830,948
Data -c,$18,":45",/51,.54,+1f,A1a,Bb,C29,De
