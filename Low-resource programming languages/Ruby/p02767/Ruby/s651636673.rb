n = gets.to_i
X = gets.chomp.split(" ", n).map(&:to_i)

min = 0
201.times do |i|
  cost = 0
  X.each do |x|
    cost += (x - i) ** 2
  end
  if min > cost || min == 0
    min = cost
  end
end

p min