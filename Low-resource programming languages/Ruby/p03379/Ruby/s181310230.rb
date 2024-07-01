n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)
y = x.sort
b = y[n/2-1..n/2]
p b
n.times do |i|
  if x[i] <= b[0]
    puts b[1]
  else x[i] >= b[1]
    puts b[0]
  end
end