n,x = gets.chomp.split(" ").map(&:to_i)
 
m = []
count = n
n.times do
  input = gets.to_i
  m << input
  x -= input
end
 
count += x / m.min
 
puts count