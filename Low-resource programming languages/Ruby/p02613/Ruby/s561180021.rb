N = gets.to_i

a = 0
w = 0
t = 0
r = 0

N.times do
  str=gets.chomp
  case str
  when "AC"
    a += 1
  when "WA"
    w += 1
  when "TLE"
    t += 1
  when "Re" 
    r += 1
  end
end

puts"AC x #{a}"
puts"WA x #{w}"
puts"TLE x #{t}"
puts"RE x #{r}"
