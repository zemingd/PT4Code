N = gets.to_i

size = N.to_s.size

ans = 0

(3..(size - 1)).each do |i|
  ans += [3, 5, 7].repeated_permutation(i).count { |l| l.uniq.size == 3 }
end

ans += [3, 5, 7].repeated_permutation(size).count { |l| l.uniq.size == 3 && l.join.to_i <= N }

puts ans
