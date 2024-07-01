n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
pair = []

ary.combination(3) do |x|
    pair << x
end

ans = 0

pair.each do |x|
    if x[0] < x[1] + x[2] && x[1] < x[0] + x[2] && x[2] < x[0] + x[1]
        ans += 1
    end
end

puts ans
