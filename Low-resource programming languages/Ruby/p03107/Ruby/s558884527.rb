s = gets.chomp
r = 0
b = 0
s.each_char do |c|
  r += 1 if c == "0"
  b += 1 if c == "1"
end
puts s.length - (r-b).abs