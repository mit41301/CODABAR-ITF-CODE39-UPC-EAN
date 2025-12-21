10 Rem TITLE  :  BARCODE PRINTER PROGRAM - CODE 3 OF 9
20 Rem TESTED WITH WINDOWS 10 HOME AND WINDOWS 11 OS
30 Rem TESTED WITH QB64 and VERIFIED THE OUTPUT WITH CODE39 SCANNER
40 Dim C$(44), P$(44), G%(1000)
50 For I = 0 To 43
    60 Read C$(I), X$
    70 C% = Val("&H" + X$)
    80 For N% = 9 To 0 Step -1
        90 P$(I) = Right$(Str$(C% Mod 2), 1) + P$(I)
        100 C% = C% \ 2
    110 Next N%
120 Next I
130 Cls
140 Def Seg = &H40
150 K% = Peek(&H17)
160 Poke &H17, (K% Or &H40)
170 Locate 12, 20: Print "Valid Characters are 0-9,A-Z,.,-,+,/,$,% and SPACE"
180 Locate 13, 20: Print "To Add Check Digit Enter the Data Starting with -$"
190 Locate 14, 20: Input "Enter the String: "; U$
200 If Len(U$) >= 30 Then Print "Enter String with < 30 Characters": End
210 For I = 1 To Len(U$)
    220 For J = 0 To 43
        230 If C$(J) = Mid$(U$, I, 1) Then F$ = F$ + P$(J): S = S + J
    240 Next J
250 Next I
260 Y = (S - 75) Mod 43
270 If InStr(U$, "-$") = 1 Then U$ = U$ + C$(Y): F$ = F$ + P$(Y)
280 Screen 2
290 KEY Off: Cls
300 Print C$(43) + U$ + C$(43)
310 Get (0, 0)-(8 * (Len(U$) + 2), 14), G%()
320 Cls
330 Paint (1, 1)
340 For I = 1 To Len(F$) + 20
    350 For J = Val(Mid$(P$(43) + F$ + P$(43), I, 1)) * 2 To 0 Step -1
        360 Line (Z, 5)-(Z, 10 + Len(U$)), I Mod 2 Xor 0
        370 Z = Z + 1
    380 Next J
390 Next I
400 Put ((8 * (Len(U$) + 2)) / 2, 15 + Len(U$)), G%()
410 Poke &H17, K%
420 Def Seg
430 While InKey$ = ""
440 Wend
450 KEY On: Screen 0
460 End
470 Data 0,34,1,121,2,61,3,160,4,31,5,130,6,70,7,25,8,124,9,64
480 Data A,109,B,49,C,148,D,19,E,118,F,58,G,D,H,10C,I,4C,J,1C,K,103,L,43
490 Data M,142,N,13,O,112,P,52,Q,7,R,106,S,46,T,16,U,181,V,C1,W,1C0,X,91
500 Data Y,190,Z,D0,-,85,.,185," ",C4,$,A8,/,A2,+,8A,%,2A,*,94
