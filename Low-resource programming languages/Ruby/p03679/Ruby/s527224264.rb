x = ARGV[0].to_i
a = ARGV[1].to_i
b = ARGV[2].to_i

deadline = a - b

if deadline >= 0
  puts "delicious"
elsif deadline >= -1*x
  puts "safe"
else
  puts "dangerous"
end