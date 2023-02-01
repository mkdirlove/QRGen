require 'rqrcode'
require 'optparse'

banner = <<-BANNER

  ██████╗ ██████╗  ██████╗ ███████╗███╗   ██╗
 ██╔═══██╗██╔══██╗██╔════╝ ██╔════╝████╗  ██║
 ██║   ██║██████╔╝██║  ███╗█████╗  ██╔██╗ ██║
 ██║▄▄ ██║██╔══██╗██║   ██║██╔══╝  ██║╚██╗██║
 ╚██████╔╝██║  ██║╚██████╔╝███████╗██║ ╚████║
  ╚══▀▀═╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝

BANNER

system("clear")
puts banner

def print_qr_code(qr)
  qr.modules.each do |row|
    row.each do |col|
      print col ? "  " : "\u2588\u2588"
    end
    puts
  end
end

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby qrcode.rb [options]"

  opts.on("-d", "--data DATA", "Data to encode in the QR code") do |data|
    options[:data] = data
  end

  opts.on("-o", "--output FILE", "Output file name") do |file|
    options[:file] = file
  end

  opts.on("-p", "--print", "Print QR code in the terminal") do |p|
    options[:print] = p
  end
end.parse!

if options[:data].nil?
  puts "Error: data to encode must be specified. Use -h or --help for help."
  exit
end

data = options[:data]
file = options[:file] || "qr.png"

qr = RQRCode::QRCode.new(data)
print_qr_code(qr) if options[:print]

png = qr.as_png
File.write(file, png.to_s) if file
puts "Your QR Code has been generated."
