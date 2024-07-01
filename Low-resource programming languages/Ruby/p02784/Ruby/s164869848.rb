monster, several = gets.split(" ").map(&:to_i)
attacks = gets.split(" ").map(&:to_i).inject(:+)

if monster - attacks <= 0
  puts "Yes"
else
  puts "No"
end
