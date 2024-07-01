A,B = gets.split.map(&:to_i)

case A
when 0..5
  puts 0
when 6..12
  puts B / 2
else
  puts B
end