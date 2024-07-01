n = gets.to_i
as = gets.chomp.split.map(&:to_i)
sum_a = Array.new(n,0)
ans = 10 ** 18
as.each_with_index do |a,i|
  if i != 0
    sum_a[i] = sum_a[i-1] + a
  else
    sum_a[i] = a
  end
end

sum = sum_a[-1]
sum_a.each_with_index do |j,k|
  next if k == n - 1
  ans = (sum - j*2).abs if ans > (sum - j*2).abs
end

puts ans
