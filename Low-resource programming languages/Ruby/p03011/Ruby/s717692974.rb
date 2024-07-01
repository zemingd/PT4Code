p, q, r = gets.strip.split.map(&:to_i)
ary = [p, q, r].sort
puts (ary[0] + ary[1])