n = gets.to_i
x = gets.split(" ").map(&:to_i)
ans = 100000000
102.times do |i|
  sum = 0
  x.each do |xi|
    sum += (xi - i)**2
  end
  ans = [ans, sum].min
end
puts ans