x = ARGV[0].to_i
a = ARGV[1].to_i
b = ARGV[2].to_i

if x < 1 || x > 1000000000
  raise "invalid number"
end

if a < 1 || a > 1000000000
  raise "invalid number"
end

if b < 1 || b > 1000000000
  raise "invalid number"
end

deadline = a - b

if deadline >= 0
  puts "delicious"
elsif deadline >= -1*x
  puts "safe"
else
  puts "dangerous"
end