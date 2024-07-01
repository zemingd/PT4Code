A = gets.split.map(&:to_i).inject(:+)

if A >= 22
  puts "bust"
else
  puts "win"
end