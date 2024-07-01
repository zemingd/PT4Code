a, b = gets.chomp.split(" ").map(&:to_i)

fee =
  if a <= 5
    0
  elsif a >= 6 && a <= 12
    b / 2
  elsif a >= 13
    b
  end

puts fee
