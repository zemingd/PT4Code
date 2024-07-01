D, T, S = gets.chomp.split.map(&:to_i)

if D.to_f / S <= T.to_f
  puts "Yes"
else
  puts "No"
end
