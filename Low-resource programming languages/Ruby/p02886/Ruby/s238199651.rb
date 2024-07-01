a=gets.chomp.to_i
c=gets.chomp.split.map(&:to_i)
b=[]
b.push(c.combination(2).to_a)
d=[]
e=0

b[0].each do |x|
  e+=x[0]*x[1]
  
end
p e