n = gets.to_i
a = n.to_s.split("").map(&:to_i)
s = 0
for i in a do
  s += i
end

if n % s == 0
  puts "Yes"
else
  puts "No"
end