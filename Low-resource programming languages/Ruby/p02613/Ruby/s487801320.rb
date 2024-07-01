n = gets.to_i

a1 = 0
a2 = 0
a3 = 0
a4 = 0

n.times do 
    s = gets.chomp
    next if s.size > 3
    a1 += 1 if s == "AC"
    a2 += 1 if s == "WA"
    a3 += 1 if s == "TLE"
    a4 += 1 if s == "RE"
end

puts "AC x " + a1.to_s
puts "WA x " + a2.to_s
puts "TLE x " + a3.to_s
puts "RE x " + a4.to_s