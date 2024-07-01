n = gets.chomp.to_i

s = []

c_0 = 0
c_1 = 0
c_2 = 0
c_3 = 0

for num in 0...n do
 s[n]=gets.chomp
 if(s[n] == "AC")
  c_0 = c_0 + 1
 elsif(s[n] == "WA")
  c_1 = c_1 + 1
 elsif(s[n] == "TLE")
  c_2 = c_2 + 1
 else
  c_3 = c_3 + 1
 end

end

puts "AC x #{c_0}"
puts "WA x #{c_1}"
puts "TLE x #{c_2}"
puts "RE x #{c_3}"
