n=gets.to_i
a,b,array=[],[],[]
n.times do
c=gets.chomp
array<<c
a<<c.split('')[0]
b<<c.split('')[-1]
end
a.shift
b.pop
if a==b && array==array.uniq
puts 'Yes'
else
puts 'No'
end