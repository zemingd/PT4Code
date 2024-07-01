n = gets.chomp.to_i
ary_p = gets.split(" ").map(&:to_i)
ans = -1

(n + 1).times do |i|
    ary_pn = ary_p.first(i)
    min_number = ary_pn.min
    if min_number == ary_pn[-1]
        ans += 1
    end
end

puts ans
