a, b, c = gets.chomp.split.map(&:to_i)
if ((Math.sqrt(a).to_f + Math.sqrt(b).to_f) < Math.sqrt(c).to_f)
  puts "Yes"
else
  puts "No"
end
