n = gets.split("")#.map(&:to_i)

if n.join.to_i % n.map(&:to_i).inject(:+) == 0
  puts "Yes"
else
  puts "No"
end