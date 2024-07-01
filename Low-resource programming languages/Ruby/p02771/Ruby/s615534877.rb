a,b,c = gets.split.map(&:to_i)
ar = [a,b,c]

if ([a,b,c].uniq).count ==2
  puts "Yes"
else
  puts "No"
end
