a = gets.chomp.to_i
b = gets.chomp.split(" ").map(&:to_i)

cnt = a/2
upsor = b.sort
dwsor = b.sort {|a, b| b <=> a }

max = upsor.slice(cnt-1)
min = dwsor.slice(cnt-1)

upc = min
dwc = max

if (upc-dwc) == 1 || (upc-dwc) == 0
  puts "0"
else
  puts (upc-dwc)
end