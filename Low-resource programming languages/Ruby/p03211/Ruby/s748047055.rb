s = gets.chomp
ans = 10000
for i in 0..s.size-3
    ans = [ans,(753-s[i..i+2].to_i).abs].min
end
puts ans