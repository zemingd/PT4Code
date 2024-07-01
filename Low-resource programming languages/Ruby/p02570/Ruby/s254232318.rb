D, T, S = gets.chomp.split.map(&:to_i)

if D.to_f/S.to_f <= T
  puts "Yes"
else
  puts "No"
end