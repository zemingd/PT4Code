a,b = gets.split(" ").map(&:to_i)

if a >= b
  puts "#{b}"*a
else
  puts "#{a}"*b
end