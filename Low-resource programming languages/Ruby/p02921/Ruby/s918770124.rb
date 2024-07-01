s1=gets.chomp
s2=gets.chomp
cnt=0
3.times do |i|
  cnt += 1 if s1[i]==s2[i]
end
p cnt