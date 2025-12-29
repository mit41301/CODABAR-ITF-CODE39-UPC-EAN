10                      DIM p$(29), c%(12), q$(9), m%(100)
20                      INPUT "    Enter the Number : "; u$
30      FOR i% = 0 TO 9
40                      READ n$, s$
50                      n% = ASC(n$)
60                      s% = ASC(s$) XOR &H3F
70      WHILE n% <> 0
80              p$(i%) = RIGHT$(STR$(n% MOD 2), 1) + p$(i%)
90              p$(i% + 10) = RIGHT$(STR$(n% MOD 2 XOR 1), 1) + p$(i% + 10)
100             p$(i% + 20) = p$(i% + 20) + LEFT$(p$(i%), 1)
110             q$(i%) = RIGHT$(STR$(s% MOD 2 + 1), 1) + q$(i%)
120                     n% = n% \ 2
130                     s% = s% \ 2
140     WEND
150     NEXT i%
160     FOR i% = 0 TO 11
170             c%(i%) = VAL(MID$(u$, i% + 1, 1))
180             x% = x% + c%(i%) * (((i% + 1) MOD 2) + (3 * (i% MOD 2)))
190     NEXT i%
200                     c%(i%) = (10 - x% MOD 10) MOD 10
210     FOR i% = 1 TO 6
220             l$ = l$ + p$(VAL(MID$(q$(c%(0)), i% + 1, 1)) * 10 + c%(i%))
230             r$ = r$ + p$(c%(i% + 6))
240     NEXT i%
250                     f$ = "606" + l$ + "06060" + r$ + "606"
260             KEY OFF: SCREEN 2
270             PRINT LEFT$(u$, 12) + RIGHT$(STR$(c%(12)), 1)
280                     GET (0, 0)-(13 * 8, 8), m%
290                     SCREEN 2: CLS
300                             PAINT (0, 0)
310                             PUT (15, 35), m%
320     FOR i% = 1 TO 95
330             b% = VAL(MID$(f$, i%, 1))
340             LINE (20 + i%, 5)-(20 + i%, 25 + b%), SGN(b%) XOR 1
350     NEXT i%
360             WHILE INKEY$ = ""
370             WEND
380                     KEY ON: SCREEN 0
390                     END
400     DATA    r,?,f,4,l,2,B,1,\,",",N,&,P,#,D,*,H,),t,%

