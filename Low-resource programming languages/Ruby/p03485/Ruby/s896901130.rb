a, b = gets.split.map(&:to_i)

avg = (a + b) / 2
remain = (a + b) % 2

puts avg + remain