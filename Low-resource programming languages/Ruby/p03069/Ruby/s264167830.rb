n = gets.chomp.to_i
s = gets.chomp
sum = []
sum[0] = 0

cnt = 0
1.upto(n) do |i|
  if s[i-1] == "#"
    cnt += 1
  end
  sum[i] = cnt
end

cnt = 0
(n-1).downto(0) do |i|
  if s[i] == "."
    cnt += 1
  end
  sum[i] += cnt
end

puts sum.min
