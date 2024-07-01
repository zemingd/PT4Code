N = gets.chomp!.to_i
Xs = gets.chomp!.split(" ").map! { |i| i.to_i }

min_sum = 1000000
(1..100).each do |p|
  sum = 0
  Xs.each do |x|
    sum += (x - p) * (x - p)
  end
  min_sum = sum if min_sum > sum
end
puts min_sum
