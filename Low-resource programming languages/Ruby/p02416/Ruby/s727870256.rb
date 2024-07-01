loop {
  x = gets.to_s

  if x == '0'
    break
  else
    sum = 0
    x.chars { |i| sum += i.to_i }
    puts sum
  end
}