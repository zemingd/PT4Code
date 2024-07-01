s = gets.chomp

i = s.to_i(2)
if s.size.even?
  j = ('01'*(s.size/2)).to_i(2)
  k = ('10'*(s.size/2)).to_i(2)
else
  j = ('01'*(s.size/2) + '0').to_i(2)
  k = ('10'*(s.size/2) + '1').to_i(2)
end

puts [(i ^ j).to_s(2).count('1'), (i ^ k).to_s(2).count('1')].min
