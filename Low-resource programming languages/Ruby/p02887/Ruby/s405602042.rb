n=gets.chomp.to_i
s=gets.chomp
a=0
(n-1).times do |i|
  a += 1 if s[i] != s[i+1]
end
p a+1
