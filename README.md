<h1 align="center">
  <br>
  <a href="https://github.com/mkdirlove/QRGen"><img src="https://github.com/mkdirlove/QRGen/blob/main/logo.png" alt="QRGen"></a>
  <br>
  A simple tool that can generate a QR code.
  <br>
</h1>

#### Installation

Copy-paste this into your terminal:

```
gem install rqrcode
```
```
git clone https://github.com/mkdirlove/QRGen.git
```
```
cd QRGen
```
```
ruby QRGen.py -h
```

#### Usage
```
 ██████╗ ██████╗  ██████╗ ███████╗███╗   ██╗
██╔═══██╗██╔══██╗██╔════╝ ██╔════╝████╗  ██║
██║   ██║██████╔╝██║  ███╗█████╗  ██╔██╗ ██║
██║▄▄ ██║██╔══██╗██║   ██║██╔══╝  ██║╚██╗██║
╚██████╔╝██║  ██║╚██████╔╝███████╗██║ ╚████║
 ╚══▀▀═╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝
Usage: ruby qrcode.rb [options]
    -d, --data DATA                  Data to encode in the QR code
    -o, --output FILE                Output file name
    -p, --print                      Print QR code in the terminal
```

#### Sample Usage
```
ruby QRGen.rb -d test -o qr.png
```
```
ruby QRGen.rb -d test -o qr.png -p / --print
```
