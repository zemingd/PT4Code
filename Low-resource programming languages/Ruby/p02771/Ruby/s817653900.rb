a,b,c = gets.split("").map(&:to_i)

if a == b || a == c || b == c
  puts "yes"
else
  puts "No"
end
