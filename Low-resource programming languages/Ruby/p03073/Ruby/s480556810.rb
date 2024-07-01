s = gets.chomp.to_s.split(//).map(&:to_i)
i = 0
j = 1
ary_from_0 = []
ary_from_1 = []

s.size.times do |k|
    if k % 2 == 0
        ary_from_0 << i
        ary_from_1 << j
    else
        ary_from_0 << j
        ary_from_1 << i
    end
end

cnt_0 = 0
cnt_1 = 0

s.each do |x|
    if x == ary_from_0[i]
        cnt_0 += 1
    else
        cnt_1 += 1
    end
    i += 1
end

puts s.size - [cnt_0, cnt_1].max
