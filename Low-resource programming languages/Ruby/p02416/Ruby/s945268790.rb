loop {
  x = gets.to_s

  break if x == "0"

  sum = 0
  x.chars { |i| sum += i.to_i }
  puts sum
}