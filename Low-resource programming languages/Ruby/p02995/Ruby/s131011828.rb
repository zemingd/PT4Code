a, b, c, d = gets.split.map(&:to_i)
cnt = 0
[*a..b].each do |i|
    unless i % c == 0 || i % d == 0
        cnt += 1
    end
end
puts cnt