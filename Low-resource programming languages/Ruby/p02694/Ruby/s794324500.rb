n = gets.strip.to_i
a = 0
p = 100

while p < n
    p += (p / 100)
    a += 1
end

puts a