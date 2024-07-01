n = gets.chop.to_i
k = n.to_s.length
puts 0 if k < 3
nums = 0
if k >= 3
  for i in 3..k
  [3,5,7].repeated_permutation(i) { |num|
    nums += 1 if num.join.to_i <= n && num.uniq.size == 3
  }
  end
end
puts nums