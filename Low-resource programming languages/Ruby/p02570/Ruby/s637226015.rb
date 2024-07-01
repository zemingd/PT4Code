D,T,S = gets.chomp.split(" ").map(&:to_i)

if D/T.to_f <= S
  puts "Yes"
else
  puts "No"
end