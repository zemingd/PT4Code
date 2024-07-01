a, b, c, d = gets.chop.split.map(&:to_i)

if (a-c).abs <= d
  puts "Yes"
else
  if (a-b).abs && (b-c).abs
    puts "Yes"
  else
    puts "No"
  end
end
