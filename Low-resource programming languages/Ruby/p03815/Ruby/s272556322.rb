s = gets.chomp.to_i
ans = s / 11
if s % 11 >= 6
puts ans * 2 + 2
else
    puts ans * 2 + 1
end

