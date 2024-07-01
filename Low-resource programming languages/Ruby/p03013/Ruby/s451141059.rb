n, m = gets.chomp.split.map(&:to_i)
a = []
m.times do |i|
  a[i] = gets.chomp.to_i
end

sum = Array.new(n+1, -2)
sum[0] = 1
a.each do |i|
  sum[i] = -1
end

1.upto(n) do |i|
  if i == 1
    if sum[i] == -1
      sum[i] = 0
    else
      sum[i] = 1
    end
  else
    if sum[i] == -1
      sum[i] = 0
    else
      sum[i] = sum[i-2] + sum[i-1]
    end
  end
  sum[i] %= 1000000007
end
p sum[n] % 1000000007
