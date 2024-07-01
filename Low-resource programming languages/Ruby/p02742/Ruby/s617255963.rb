h, w = gets.chomp.split(" ").map(&:to_i)
if h == 1 || w == 1
    puts 1
    exit
end

odd = (h / 2) + (h % 2)
even = h % 2 == 0 ? odd : odd - 1
ans = (odd + even) * (w / 2)
ans += odd if w % 2 != 0
puts ans