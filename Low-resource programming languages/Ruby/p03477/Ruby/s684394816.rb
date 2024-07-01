A, B, C, D = gets.chomp.split(" ").map(&:to_i)

case A+B <=> C+D
when 1 then
  puts 'Left'
when -1 then
  puts 'Right'
else
  puts 'Balanced'
end
