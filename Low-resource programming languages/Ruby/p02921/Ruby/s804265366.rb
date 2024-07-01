s=gets.chomp.split.map &:to_s
t=gets.chomp.split.map &:to_s
c=0
3.times do |i|
  c+=1 if s[i] == t[i]
end
puts c
