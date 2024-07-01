inputs = gets.split(' ').map(&:to_i)
a = inputs[0]
b = inputs[1]
c = inputs[2]

if b > a && b < c 
  puts 'Yes'
else
  puts 'Not'
end