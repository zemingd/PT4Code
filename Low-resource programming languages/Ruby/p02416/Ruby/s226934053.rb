loop {
  x = gets.split(" ").map(&:to_i)

  x == '0' && break

  sum = 0
  x.chars { |i| sum += i.to_i }
  puts sum
}