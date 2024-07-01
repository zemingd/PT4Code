A, B = gets.chomp.split.map(&:to_i)

fee =
  case A
  when 0..5
    0
  when 5..12
    B / 2
  else
    B
  end

puts fee
