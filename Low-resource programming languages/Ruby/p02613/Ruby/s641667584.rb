n = gets.to_i
C_0,C_1,C_2,C_3 = 0,0,0,0
n.times do
  s = gets.chomp()
  if s == 'AC'
    C_0 += 1
  elsif s == 'WA'
    C_1 += 1
  elsif s == 'TLE'
    C_2 += 1
  else
    C_3 += 1
  end
end

print('AC x ',C_0, "\n")
print('WA x ',C_1,"\n")
print('TLE x ',C_2,"\n")
print('RE x ', C_3,"\n")