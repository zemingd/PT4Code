n, X = gets.chomp.split().map(&:to_i)
x = gets.chomp.split().map(&:to_i)

x.push X
x.sort!

diff = []
(x.size-1).times do |i|
  diff.push x[i+1] - x[i]
end

ans = diff[0]

1.upto(diff.size-1).each do |i|
  ans = ans.gcd(diff[i])
end

puts ans