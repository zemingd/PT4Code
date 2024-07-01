s = gets.split[0]
a, b = gets.split.map(&:to_i)
u = gets
if u == s
  a -= 1
else
  b -= 1
end
puts "#{a} #{b}"