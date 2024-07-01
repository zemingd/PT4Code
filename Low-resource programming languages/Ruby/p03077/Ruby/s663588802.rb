n=gets.chomp.to_i
a=gets.chomp.to_i
b=gets.chomp.to_i
c=gets.chomp.to_i
d=gets.chomp.to_i
e=gets.chomp.to_i

l=[a,b,c,d,e]
times=0
rest=n

l.each do |s|
  times += rest/s + (rest%s != 0?1:0)
  rest = rest>s ? rest%s : s
end

puts times
