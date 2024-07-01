s = gets.chomp.split(" ")

x = s[0].to_i
a = s[1].to_i
b = s[2].to_i

c = a - b

if c >= 0 && c <= x
  puts "delicious"
elsif c < 0 && c.abs <= x
  puts "safe"
elsif c < 0 && c.abs > x
  puts "dangerous"
end
