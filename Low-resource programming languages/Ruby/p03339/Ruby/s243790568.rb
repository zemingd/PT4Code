n = gets.chomp.to_i
s = gets.chomp
sum = Array.new(n, 0)
sum[0] = s[1..-1].count('E')
1.upto(n-1) do |i|
  if s[i-1] == 'W'
    sum[i] = sum[i-1] + 1
  else
    sum[i] = sum[i-1]
  end
  if s[i] == 'E'
    sum[i] -= 1
  end
end
puts sum.min
