a,b,c = gets.chomp.split(' ').map(&:to_i)
if a <= c && b >= c
  puts "Yes"
else
  puts "No"
end