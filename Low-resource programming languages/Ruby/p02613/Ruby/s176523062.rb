x = gets.to_i

y = x.times.map{gets.chomp.to_s}
ac = 0
wa = 0
tle = 0
re = 0
for i in 0..x-1 do
    if y[i] == "AC"
        ac += 1
    elsif y[i] == "WA"
        wa += 1
    elsif y[i] == "TLE"
        tle += 1
    elsif y[i] == "RE"
        re += 1
    end
end

puts "AC x " + ac.to_s
puts "WA x " + wa.to_s
puts "TLE x " + tle.to_s
puts "RE x " + re.to_s