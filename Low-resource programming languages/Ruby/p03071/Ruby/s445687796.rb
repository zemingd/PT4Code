ab = gets.split.map(&:to_i)

ans = 0

ab.sort!

ans += ab.last

ab[-1] = ab.last - 1
ab.sort!

ans += ab.last

puts ans
