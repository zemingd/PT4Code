a = gets.chomp.split
n = a.join("").to_i

result = "No"

i = 0
while i*i < foo do
    i += 1
    result = "Yes" if foo == i*i
end
 
puts result