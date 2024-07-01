a, b, c, d = gets.split.map &:to_i

loop{
  c -= b
  break if c <= 0
  a -= d
  break if d <= 0
}
puts a > 0 ? :Yes : :No