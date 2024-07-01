n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)
sorted = x.sort
down = sorted[(n/2)-1]
up = sorted[n/2]
n.times do |i|
  if x[i] >= up
    puts down
  else
    puts up
  end
end
