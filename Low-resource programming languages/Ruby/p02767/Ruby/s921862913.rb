n = gets.to_i
xs = gets.chomp.split.map(&:to_i).sort
min = 10**9
1.upto(100) do |i|
  sum = 0
  xs.each do |x|
    sum += (x - i) ** 2
  end
  min = sum if sum < min
end
puts min
