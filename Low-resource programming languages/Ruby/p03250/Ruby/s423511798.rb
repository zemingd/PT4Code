a, b, c = gets.strip.split.map(&:to_i)
ary = [a, b, c].sort!.reverse

puts (ary[0] * 10 + ary[1] + ary[2])
