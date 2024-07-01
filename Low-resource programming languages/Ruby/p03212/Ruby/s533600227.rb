n = gets.to_i
bit = 1
cnt = 0
while n.to_s.length >= bit
  [3,5,7].repeated_permutation(bit).each do |x|
    if x.include?(3) && x.include?(5) && x.include?(7)
      num = 0
      bit.times do |i|
        num = num * 10 + x[i]
      end
      if num <= n
        cnt += 1
      end
    end
  end
  bit += 1
end
puts cnt