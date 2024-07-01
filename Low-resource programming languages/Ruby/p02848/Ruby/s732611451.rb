alph = ('A'..'Z').to_a

n = gets.to_i
s = gets.strip

s.length.times do |i|
  index = (alph.index(s[i]) + n) % 26
  print alph[index]
end