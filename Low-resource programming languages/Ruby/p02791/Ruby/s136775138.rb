n = gets.chomp.to_i
ary_p = gets.split(" ").map(&:to_i)
min = ary_p[0]
ans = 1

n.times do |i|
    if min > ary_p[i]
        ans += 1
        min = ary_p[i]
    end
end

puts ans
