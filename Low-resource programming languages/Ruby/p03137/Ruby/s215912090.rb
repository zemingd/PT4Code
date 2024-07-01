n, m = gets.split.map(&:to_i)
ary  = gets.split.map(&:to_i).sort
bet  = []

if n >= m
  puts 0
else
  (m - 1).times do |i|
    bet << ary[i + 1] - ary[i]
  end
  bet = bet.sort
  ans = 0
  (m - n).times do
    ans += bet.shift
  end
end

puts ans
