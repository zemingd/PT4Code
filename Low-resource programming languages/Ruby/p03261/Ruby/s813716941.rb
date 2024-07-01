n=gets.to_i
a,b=[],[]
n.times do
c=gets.chomp
a<<c.split('')[0]
b<<c.split('')[-1]
end
a.shift
b.pop
if a==b
puts 'Yes'
else
puts 'No'
end