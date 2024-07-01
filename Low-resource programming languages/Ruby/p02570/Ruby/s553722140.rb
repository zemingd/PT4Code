D, T, S = gets.chomp.split(" ").map(&:to_f)

if D/S <= T
  puts "Yes"
else
  puts "No"
end