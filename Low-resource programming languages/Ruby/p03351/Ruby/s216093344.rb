a,b,c,d = gets.strip.split.map(&:to_i)
if (c-a).abs<=d
  puts "Yes"
else
  if (c-b).abs<=d && (b-a).abs<=d
    puts "Yes"
  else
    puts "No"
  end
end