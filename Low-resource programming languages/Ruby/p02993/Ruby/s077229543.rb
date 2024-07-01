S = gets.strip

a = ''
res = false
S.size.times do |i|
  if S[i].eql?(a) 
    res = true
    break
  end
  a = S[i]
end

puts res ? 'Bad' : 'Good'
