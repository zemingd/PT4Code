(a,b,c,d) = gets.chomp.split.map(&:to_i)
if ((c-a).abs <= d) || ((b-a).abs <= d && (c-b).abs <= d)
  puts "Yes"
else
  puts "No"
end
