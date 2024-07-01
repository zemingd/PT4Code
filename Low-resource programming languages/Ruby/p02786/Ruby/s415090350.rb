h = gets.to_i

sum = 0
count = 1

hp = h

loop {
  sum += count
  break if hp == 1
  count *= 2
  hp /= 2
}

puts sum
