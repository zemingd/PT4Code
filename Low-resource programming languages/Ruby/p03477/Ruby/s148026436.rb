A, B, C, D = gets.split.map(&:to_i)

if A + B < C + D
  puts 'Right'
elsif A + B > C + D
  puts 'Left'
else
  puts 'Balanced'
end
