n = gets.split.map(&:to_i)
if n[0] + n[1] < n[2] + n[3]
  puts "Right"
elsif n[0] + n[1] > n[2] + n[3]
  puts "Left"
else
  puts "Balanaced"
end