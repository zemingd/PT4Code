H = gets.chomp.to_i

i, j = 0, 0

while H >= 1 do
    H /= 2
    j += 2**i
    i += 1
end

puts "#{j}"