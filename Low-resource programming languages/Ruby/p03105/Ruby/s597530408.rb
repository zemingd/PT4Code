a, b, c = gets.split.map &:to_i

if a * c > b
    puts b / a
else
    puts c
end