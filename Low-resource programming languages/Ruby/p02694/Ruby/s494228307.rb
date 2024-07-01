x = gets.to_i

i = 100
year = 0
loop do
    break if i >= x
    year += 1
    i *= 1.01
    i = i.to_i
end

puts year