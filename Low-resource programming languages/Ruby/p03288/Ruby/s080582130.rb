r = gets.chomp.to_i
case
when r < 1200
  puts 'ABC'
when r < 2800
  puts 'ARC'
else
  puts 'AGC'
end