n = gets.to_i
s = gets.chomp
alp = [*'A'..'Z']
ary = []
i = 0
s.length.times do
  if alp.index(s[i]) + n >= 26
    ary << alp[alp.index(s[i]) + n - 26]
  else
  	ary << alp[alp.index(s[i]) + n]
  end
  i += 1
end


ans = ary.inject(:+)
puts ans