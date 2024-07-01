H = gets.chomp.to_i
h = H
if h % 2 == 1 && h != 1
    h -= 1
end

i, j = 0, 0

while H > 1 do
    H /= 2
    j += 2**i
    i += 1
end

puts "#{h + j}"