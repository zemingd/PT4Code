s = gets.chomp.split("").map(&:to_i)
ans1 = [0]
ans2 = []
s.length.times do |i|
    if i % 2 == 0
        ans1 << 1
        ans2 << 1
    else
        ans1 << 0
        ans2 << 0
    end
end
asn1 = ans1.pop
sa1 = 0
sa2 = 0
s.each_with_index do |x, i|
    sa1 += (x - ans1[i]).abs
    sa2 += (x - ans2[i]).abs
end
puts [sa1, sa2].min
