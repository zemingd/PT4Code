d,n=gets.split.map(&:to_i)
k = ""
if d == 0 && n == 100
  puts 101
elsif d == 1 && n == 100
  puts 10001
elsif d == 2 && n == 100
  puts 1000001
else
d.times do
  k += "00"
end
puts n.to_s + k
end
