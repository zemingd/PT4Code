a,v = gets.chomp.split.map(&:to_i)
b,w = gets.chomp.split.map(&:to_i)
t = gets.chomp.split.map(&:to_i)
i = false

for i in t do
  a += v
  b += w
  if a == b
    puts a, b
    i = true
  end
end

if i == true
  puts "YES"
else
  puts "NO"
end