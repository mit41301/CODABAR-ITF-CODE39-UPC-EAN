Interleaved 2 of 5, Code39, Codabar and EAN type barcode generator using GW-BASIC and QBASIC running on DOS and Windows. All the programs were tested using QB64 for Windows  Output confirmed with barcode scanner  

To RUN the UPC/EAN program in GW-BASIC or in QBASIC. You're prompted to enter 12 digit numbers of any UPC/EAN code. The 13th digit is the checksum computed by the program and draws the Barcode on the screen. DOS uses black screen and Windows uses White screen as background.

Choose the appropriate DOS or WINDOWS file for GW-BASIC or QBASIC. 

Tested on WINDOWS 10 and WINDOWS 11 using QB64 compiler. Output verified using smartphone apps using Android and iOS.

PS: The CODE 3OF9 accepts only uppercase letters. There is an feature which automatically enables the CAPS LOCK before entering the user strings. While leaving the program the CAPS LOCK left to previous state before invoking this program. It was achived by the following lines in the CODE3OF9 source code
140 Def Seg = &H40
150 K% = Peek(&H17)
and 
410 Poke &H17, K%
420 Def Seg
But this feature is not working with QB64

# TEST RESULTS 
## UPC/EAN DOS BARCODE GW-BASIC
![DOSBAR-GW](https://github.com/user-attachments/assets/8aeccd82-bef6-4c1f-bf7f-2cb9745c2318)
![DOSBAR-GW_scan](https://github.com/user-attachments/assets/a28a711d-7e34-452a-9443-bdf560a9bd57)

## UPC/EAN WIN BARCODE QB
![WINBAR-QB](https://github.com/user-attachments/assets/6f5570a5-3379-423b-9543-ce0b6ca64201)
![WINBAR-QB_scan](https://github.com/user-attachments/assets/0c390b8c-dcb5-42c5-aace-ace77d720800)

## CODE3OF9
![CODE39](https://github.com/user-attachments/assets/3d510817-96df-44a1-8ed2-fb85f02ad478)
![CODE39_scan](https://github.com/user-attachments/assets/e797bf13-f91e-4ddc-9c00-1e3383e33861)

## CODE 2OF5 or ITF
![CODE25_ITF](https://github.com/user-attachments/assets/2141c292-a3a5-40e1-8e2d-4b231ad39605)
![CODE25_ITF_SCAN](https://github.com/user-attachments/assets/b2a484f5-d4ff-4338-accb-84c03dac3866)

## CODABAR
![CODABAR](https://github.com/user-attachments/assets/8034207d-ff63-4781-8afb-2a44fa9f542f)
![CODABAR_SCAN](https://github.com/user-attachments/assets/65ff6f24-4574-4da9-a29c-1a52554662c3)
