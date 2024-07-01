n = gets.chomp.to_i

max = 0
ans = 0
heights = gets.chomp.split(" ").map(&:to_i)
heights.each do |h|
    if max <= h
        ans += 1
        max = h
    end
end

puts ans
