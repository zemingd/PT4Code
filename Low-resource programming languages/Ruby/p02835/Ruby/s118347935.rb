A = gets.chomp.split(" ").map(&:to_i)

if A.inject(&:+) >= 22
  puts "bust"
else
  puts "win"
end
