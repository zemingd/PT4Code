D, T, S = gets.split.map(&:to_i)

if D.fdiv(S) <= T
  puts "Yes"
else
  puts "No"
end