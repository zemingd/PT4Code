n, l = gets.chomp.split(' ').map {|v| v.to_i}

l_max = l + (n-1)
sum = n * (l + l_max) / 2
if l_max < 0
    sum -= l_max
elsif l > 0
    sum -= l
end

puts sum
