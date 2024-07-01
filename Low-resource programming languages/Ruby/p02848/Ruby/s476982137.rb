n = gets.chomp.to_i
s = gets.chomp.split('')
alp = ('A'..'Z').to_a * 2
# p alp
result = []
i = 0
while i < s.size
  result << alp[alp.index(s[i]) + n]
  i += 1
end
puts result.join