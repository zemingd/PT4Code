H = gets.chomp.to_i
h = H
if h % 2 == 1 && h != 1
    h -= 1
end

i = 0

while H > 1 do
    H /= 2
    i += 2**i
end

puts "#{h + i}"