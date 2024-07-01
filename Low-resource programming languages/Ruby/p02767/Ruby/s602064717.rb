n = gets.to_i
xs = gets.chomp.split.map(&:to_i).sort
min = 10**5
1.upto(xs[-1]) do |i|
  sum = 0
  xs.each do |x|
    sum += (x - i) ** 2
  end
  min = sum if sum < min
end
puts min
