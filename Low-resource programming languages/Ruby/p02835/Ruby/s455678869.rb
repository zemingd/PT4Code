a = gets.chomp.split(" ").map(&:to_i)

if a.inject(:+) >= 22 then
  puts "bust"
else
  puts "win"
end