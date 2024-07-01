h=gets.chomp.to_i
i = 1
h_now = h
while h_now > 1
    h_now = h_now / 2
    i+=1
end

puts 2**i -1