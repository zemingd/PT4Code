a, b, c, d = gets.split(' ').map(&:to_i)
a_to_b = (a-b).abs
b_to_c = (b-c).abs
a_to_c = (a-c).abs

if a_to_b <= d && b_to_c <= d then
  puts "Yes"
elsif a_to_c <= d then
  puts "Yes"
else
  puts "No"
end