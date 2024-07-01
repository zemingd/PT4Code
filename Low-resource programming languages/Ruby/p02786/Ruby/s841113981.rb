h = gets.chomp.to_i
i = 1
ans = 1

if h == 1
    puts 1
    exit
end

loop do
    h = h / 2
    ans += (1 << i)
    i += 1
    break if h / 2 <= 0
end

puts ans