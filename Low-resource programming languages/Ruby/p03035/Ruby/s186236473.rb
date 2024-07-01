a,b = gets.split(" ").map(&:to_i)

if 13 <= a
  puts b
elsif ((a < 13) and (6 <= a))
  puts b/2
else
  puts "0"
end

