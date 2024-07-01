a, b, c = gets.chomp.split.map(&:to_i)

if (!([a, b, c].uniq.count == 1)) then
  if (([a, b].uniq.count == 1) || ([b, c].uniq.count == 1)  || ([a, c].uniq.count == 1)) then
    puts "Yes"
  else
    puts "No"    
  end
else
  puts "No"
end
