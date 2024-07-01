N = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)

button =  a[0]
count = 1
while a!= 2 do
    button = a[button - 1]
    count += 1
end

if count > N then
    count = -1
end

puts count