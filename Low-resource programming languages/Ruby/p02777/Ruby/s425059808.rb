s1, s2 = gets.chomp.split(" ")
s1c, s2c = gets.chomp.split(" ").map(&:to_i)
drop = gets.chomp

if drop == s1
  puts "#{s1c - 1} #{s2c}"
elsif drop == s2
  puts "#{s1c} #{s2c - 1}"
end
