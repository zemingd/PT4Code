A,B = gets.split.map(&:to_i)
count = 0
(A..B).each do |i|
    nums = i.to_s.chars.reverse.join.to_i
    count += 1 if i == nums
end
puts count