x = gets.chomp.to_i
if x == 1
    puts "0 -1"
    exit
end
a = 1
multiplier = [-1, 1]
b = nil

while !multiplier.include?(a ** 5 - x) 
    a += 1
    tmp = a**5
    multiplier.push(tmp)
    multiplier.unshift(-1*tmp)
end

p [a, a ** 5 - x].join(" ")