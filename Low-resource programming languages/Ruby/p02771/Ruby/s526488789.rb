a, b, c = gets.chomp.split.map(&:to_i)

if ([a, b, c].uniq.count == 2) then
  puts "Yes"
else
  puts "No"
end
