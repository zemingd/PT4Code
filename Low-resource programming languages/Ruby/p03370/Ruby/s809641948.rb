n,x = gets.split(" ").map(&:to_i)
 
m = []
n.times do
  input = gets.to_i
  m << input
  x -= input
end
 
p n + x / m.min
 