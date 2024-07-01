n = gets.chomp.to_i
data = []
n.times do |i|
    data[i] = []
    a = gets.chomp.to_i
    a.times do
        x, y = gets.chomp.split.map(&:to_i)
        data[i].push([x-1, y == 1])
    end
end

ans = 0
[true, false].repeated_permutation(n) do |bit|
    next_flag = false
    bit.each_with_index do |bool, index|
        remarks = bool ? data[index] : []
        next_flag = true if remarks.any? { |x, y| bit[x] != y  }
    end
    next if next_flag
    ans = [ans, bit.count(true)].max
end

puts ans
