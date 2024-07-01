a, b, c = gets.chomp.split.map(&:to_i)
if (c - a -b > 0 && (4*a*b)<((c-a-b)**2))
  puts "Yes"
else
  puts "No"
end
