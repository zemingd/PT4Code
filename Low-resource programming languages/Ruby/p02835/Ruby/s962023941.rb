ary = gets.chomp.split(" ").map(&:to_i)
score =  ary.inject(&:+)
if score >= 22
  puts "bust"
else
  puts "win"
end