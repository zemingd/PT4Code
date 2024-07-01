a,b,c= gets.chomp.split(" ").map(&:to_i)

# if (Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c))
#   puts "Yes"
# else
#   puts "No"
# end

if ((c-a-b) <= 0)
  puts "No"
  exit
end

if (4 * a * b < (c-a-b) ** 2)
  puts "Yes"
else
  puts "No"
end