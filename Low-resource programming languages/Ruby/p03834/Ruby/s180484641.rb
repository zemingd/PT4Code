input = gets.chomp.split(' ').map(&:to_i)

ans = 0

(0..input[0]).reverse_each do |i|
  if i == input[1]
    ans += 1
    next
  end
  (0..input[0]).reverse_each do |j|
    if i + j == input[1]
      ans += 1
      next
    end
    (0..input[0]).reverse_each do |k|
      if i + j + k == input[1]
        ans += 1
        next
      end
    end
  end
end

puts ans
