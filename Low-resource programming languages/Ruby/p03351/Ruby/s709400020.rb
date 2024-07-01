a, b, c, d = gets.chop.split.map(&:to_i)

if (a-c).abs <= d
  puts "Yes"
else
  if (a-b).abs <= d && (b-c).abs <= d
    puts "Yes"
  else
    puts "No"
  end
end
