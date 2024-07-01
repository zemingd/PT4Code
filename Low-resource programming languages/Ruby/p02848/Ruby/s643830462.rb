alp = ('A'..'Z').to_a

n = gets.to_i
s = gets.chomp

(0..(s.length - 1)).each do |i|
  if alp.index(s[i]) + n <= 25
    s[i] = alp[alp.index(s[i]) + n]
  else
    s[i] = alp[alp.index(s[i]) + n - 26]
  end
end

puts s