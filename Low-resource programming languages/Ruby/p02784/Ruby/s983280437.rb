h, n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.each do |a|
  h -= a
end

if (h > 0) then
  puts "No"
else
  puts "Yes"
end
