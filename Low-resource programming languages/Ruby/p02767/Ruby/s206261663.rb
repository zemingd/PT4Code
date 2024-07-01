N = gets.chomp.to_i
X = gets.chomp.split.map(&:to_i)
ans = 1 << 40

101.times do |i|
    res = 0
    X.each do |x|
        res += (x-i) * (x-i)
    end
    ans = ans > res ? res : ans
end

puts ans