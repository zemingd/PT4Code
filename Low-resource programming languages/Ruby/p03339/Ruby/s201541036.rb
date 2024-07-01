n = gets.to_i
s = gets.chomp
tmp = 0
cum = [0]
min = 3 * 10**5 - 1

s.each_char do |c|
  tmp += 1 if c == 'W'
  cum << tmp
end

1.upto(n) do |i|
  tmp = cum[i - 1] + n - i - (cum[-1] - cum[i])
  min = tmp if min > tmp
end

puts min