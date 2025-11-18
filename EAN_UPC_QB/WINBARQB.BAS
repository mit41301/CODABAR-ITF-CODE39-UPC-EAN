10 Dim p$(29), c%(12), q$(9), m%(100)
20 Input "    Enter the Number : "; u$
30 For i% = 0 To 9
    40 Read n$, s$
    50 n% = Asc(n$)
    60 s% = Asc(s$) Xor &H3F
    70 While n% <> 0
        80 p$(i%) = Right$(Str$(n% Mod 2), 1) + p$(i%)
        90 p$(i% + 10) = Right$(Str$(n% Mod 2 Xor 1), 1) + p$(i% + 10)
        100 p$(i% + 20) = p$(i% + 20) + Left$(p$(i%), 1)
        110 q$(i%) = Right$(Str$(s% Mod 2 + 1), 1) + q$(i%)
        120 n% = n% \ 2
        130 s% = s% \ 2
    140 Wend
150 Next i%
160 For i% = 0 To 11
    170 c%(i%) = Val(Mid$(u$, i% + 1, 1))
    180 x% = x% + c%(i%) * (((i% + 1) Mod 2) + (3 * (i% Mod 2)))
190 Next i%
200 c%(i%) = (10 - x% Mod 10) Mod 10
210 For i% = 1 To 6
    220 l$ = l$ + p$(Val(Mid$(q$(c%(0)), i% + 1, 1)) * 10 + c%(i%))
    230 r$ = r$ + p$(c%(i% + 6))
240 Next i%
250 f$ = "606" + l$ + "06060" + r$ + "606"
260 KEY Off: Screen 2
270 Print Left$(u$, 12) + Right$(Str$(c%(12)), 1)
280 Get (0, 0)-(13 * 8, 8), m%()
290 Screen 2: Cls
300 Paint (0, 0)
310 Put (15, 35), m%()
320 For i% = 1 To 95
    330 b% = Val(Mid$(f$, i%, 1))
    340 Line (20 + i%, 5)-(20 + i%, 25 + b%), Sgn(b%) Xor 1
350 Next i%
360 While InKey$ = ""
370 Wend
380 KEY On: Screen 0
390 End
400 Data r,?,f,4,l,2,B,1,\,",",N,&,P,#,D,*,H,),t,%
