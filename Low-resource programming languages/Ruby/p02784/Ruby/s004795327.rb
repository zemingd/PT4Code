H, N = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

h = H

A.each do |a|
  h -= a
end

if h <= 0 then
  puts "Yes"
else
  puts "No"
end