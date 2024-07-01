A, B, C = gets.split.map(&:to_i)
if A <= C && C <= B
  puts "Yes"
else
  puts "No"
end
