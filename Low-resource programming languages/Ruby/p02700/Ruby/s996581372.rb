a, b, c, d = gets.split.map!(&:to_i)

s = (c - 1) / b + 1
t = (a - 1) / d + 1

puts (s <= t) ? :Yes : :No

load __FILE__ unless $stdin.eof?
