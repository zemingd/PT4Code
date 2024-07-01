n = gets.to_i
p = gets.split.map(&:to_i)
min = 10 ** 6
ans = 0
p.each do |c|
    if c <= min
        ans += 1
        min = c
    end
end
puts ans