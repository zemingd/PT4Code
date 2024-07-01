n=gets.to_i
s=gets.split.map &:to_i
ans=0
s.combination(2).to_a.each do |i|
  ans+=s[i[0]-1]*s[i[1]-1]
end
puts ans
