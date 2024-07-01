loop {
  x = gets.chop

  x == '0' && break

  sum = 0
  x.chars { |i| sum += i.to_i }
  puts sum
}