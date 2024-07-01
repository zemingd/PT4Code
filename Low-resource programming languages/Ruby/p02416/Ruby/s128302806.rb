loop {
  x = gets.chomp

  break if x == '0'

  sum = 0
  c.chars { |i| sum += i.to_i }
  puts sum
}