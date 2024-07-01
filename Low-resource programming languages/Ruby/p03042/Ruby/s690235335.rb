m = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
s = gets.to_i
x = s / 100
y = s % 100
if 0<x && x<13
  if 0<y && y<13
    puts "AMBIGUOUS"
    exit
  elsif 0<y && y<=m[x]
    puts "MMYY"
    exit
  end
elsif 0<y && y<13 && 0<x && x<=m[y]
  puts "YYMM"
  exit
end
puts "NA"