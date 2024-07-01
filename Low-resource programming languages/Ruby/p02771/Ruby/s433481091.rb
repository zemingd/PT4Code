a, b, c = gets.chop.split.map(&:to_i)
kind = [a,b,c].uniq.length
if kind == 2
  puts "Yes"
else
  puts "No"
end