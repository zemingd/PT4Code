n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

x = []
a.each do |i|
  i.to_s(2).chars.reverse.each_with_index do |j, k|
    if j == '1'
      x[k] ||= 0
      x[k] += 1
    else
      x[k] ||= 0
    end
  end
end

sum = 0
(0...(m.to_s(2).length)).reverse_each do |i|
  sum += 2**i if (x[i] == nil || x[i] <= n/2.0) && sum + 2**i <= m
end

puts a.map{|i| i ^ sum}.inject(:+)