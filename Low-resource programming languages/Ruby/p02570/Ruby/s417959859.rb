d,t,s = gets.chomp.split.map(&:to_f)

if d / s <= t
  puts "Yes"
else
  puts "No"
end