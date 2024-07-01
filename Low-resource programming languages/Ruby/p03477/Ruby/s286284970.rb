(a, b, c, d) = gets.chomp.split(' ').map(&:to_i)

case ((a + b) <=> (c = d))
when -1 then
  puts 'Right'
when  0 then
  puts 'Balanced'
when  1 then
  puts 'Left'
end