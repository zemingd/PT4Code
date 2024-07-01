a, b, c = gets.chomp.split.map(&:to_f)
if ((Math.sqrt(a) + Math.sqrt(b)) < Math.sqrt(c))
  puts "Yes"
else
  puts "No"
end
