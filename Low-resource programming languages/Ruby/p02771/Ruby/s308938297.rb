a,b,c = gets.split().map(&:to_i)
if a == b && b == c
  puts "No"
else
  puts "Yes"
end

