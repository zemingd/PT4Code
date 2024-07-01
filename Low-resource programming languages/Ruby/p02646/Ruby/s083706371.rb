a,v = gets.chomp.split(' ').map(&:to_i)
b,w = gets.chomp.split(' ').map(&:to_i)
t = gets.to_i
if (v - w) * t >= (a - b).abs
  puts "Yes"
else
  puts "No"
end