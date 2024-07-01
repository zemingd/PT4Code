n,k = gets.split.map!{|i| i.to_i}
i = 1

while n >= (k ** i)
    i = i + 1 
end

puts(i)