n, m = gets.chomp.split.map(&:to_i)
a = []
m.times do |i|
  a[i] = gets.chomp.to_i
end

sum = []
sum[0] = 1

1.upto(n) do |i|
  if i == 1
    if a.include?(i)
      sum[i] = 0
    else
      sum[i] = 1
    end
  else
    if a.include?(i)
      sum[i] = 0
    elsif a.include?(i-1)
      sum[i] = sum[i-2]
    else
      sum[i] = sum[i-2] + sum[i-1]
    end
  end
  sum[i] -= 1000000007 if sum[i] >= 1000000007
end
p sum[n] % 1000000007

