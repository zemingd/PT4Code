n,x = gets.chomp.split(" ").map(&:to_i)
 
m = []
n.times do
  input = gets.to_i
  m << input
  x -= input
end
 
puts n + x / m.min