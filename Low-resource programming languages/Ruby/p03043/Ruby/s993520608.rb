n, k = gets.strip.split.map(&:to_i)

num = Math.log2(k).ceil

ans = 0.0
n.times do |i|
    minus = Math.log2(i + 1).ceil
    if minus > num then
        exp = 1.0
    else
        exp = 1.0 / (2 ** (num - minus))
    end
    ans += exp / n
end

puts ans