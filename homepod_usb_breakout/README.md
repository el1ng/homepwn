# Homepod USB Breakout

This USB breakout contains both a USB and UART USB connector.

In theory the UART control extra pins can also change between USB+UART and UART only mode, however, the default configuration both UART+USB are enabled.

# BOM

| Id | Designator     | Quantity | Designation       | MFG        | Part             | DigiKey               | Mouser               |
| -- | -------------- | -------- | ----------------- | ---------- | ---------------- | --------------------- | -------------------- |
| 1  | J101,J102      | 2        | USB_B_Micro       | FCI        | 10118193-0001LF  | 609-4616-1-ND         | 649-10118193-0001LF  |
| 2  | U103           | 1        | TPS22948DCKR      | TI         | TPS22948DCKR     | 595-TPS22948DCKR      | 595-TPS22948DCKR     |
| 3  | D101,D102,D103 | 3        | BAT48JFILM        | Infineon   | BAT60AE6327HTSA1 | BAT60AE6327HTSA1CT-ND | 726-BAT60AE6327HTSA1 |
| 4  | C106,C104,C105 | 3        | 100nF             | Any        | Eg               | 311-1366-1-ND         | 603-C0603MRY5V9BB104 |
| 5  | R101,R102      | 2        | 27                | Any        | Eg               | 311-27GRCT-ND         | 603-RC0603JR-0727RL  |
| 6  | C101,C103,C107 | 3        | 1uF               | Any        | Eg               | 3490-1550-1-ND        | 81-GRM39R105K6.3     |
| 7  | C102           | 1        | 10uF              | Any        | Eg               | 478-10766-1-ND        | 581-0603ZD106KAT2A   |
| 8  | R103,R104      | 2        | 10k               | Any        | Eg               | MCT0603-10K-MDCT-ND   | 594-MCT0603MD1002DP5 |
| 9  | U101           | 1        | AP2127K-1.8       | Diodes Inc | AP2127K-1.8TRG1  | AP2127K-1.8TRG1       | 621-AP2127K-1.8TRG1  |
| 10 | U102           | 1        | FT230XS           | FTDI       | FT230XS-R        | 895-FT230XS-R         | 895-FT230XS-R        |
| 11 | J1             | 1        | Conn_01x08_Female | FCI        | SLW8S-1C7LF      | 609-1935-ND           | 649-SLW8S-1C7LF      |
| 12 | J2             | 1        | Conn_01x04        | Any        | Eg               | 732-5317-ND           | 710-61300411121      |
| 13 | J3             | 1        | Conn_01x03_Male   | Any        | Eg               | 732-5316-ND           | 710-61300311121      |

Don't forget an _opposite_ sided 8pin 1mm FFC cable
