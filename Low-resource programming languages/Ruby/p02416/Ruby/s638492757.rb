loop {
  x = gets.chomp

  if x == '0'
    break
  end

  sum = 0
  x.chars { |i| sum += i.to_i }
  puts sum
}