s, t = gets.chomp.split
a, b = gets.chomp.split.map(&:to_i)
u = gets.chomp

if u == 'red'
  a -= 1
else
  b -= 1
end
puts "#{a} #{b}"
