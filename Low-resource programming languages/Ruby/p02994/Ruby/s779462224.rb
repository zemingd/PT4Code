n,l = gets.split.map &:to_i
if l <= 0 && n + l > 0
    puts 0.5 * n * ( n + 1 ) + n * (l - 1)
elsif l < 0
    puts 0.5 * n * ( n + 1 ) + n * (l - 1) - (n + l - 1)
else
    puts 0.5 * n * ( n + 1 ) + n * (l - 1)  - l
end