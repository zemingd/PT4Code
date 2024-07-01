def counts(nums)
  nums.uniq.map { |n| [n, nums.count(n)] }.sort_by(&:last).reverse
end

N = gets.to_i
evens, odds = gets.split(" ").map(&:to_i).partition.with_index { |n, i| i % 2 == 0 }

even_counts = counts(evens)
odd_counts = counts(odds)

even_num, even_no_op_count = even_counts[0]
odd_num,  odd_no_op_count  = odd_counts[0]

ans = if even_num == odd_num
  candidates = [
    even_counts.fetch(1, [0]).last + odd_no_op_count,
    even_no_op_count  + odd_counts.fetch(1, [0]).last
  ]
  N - candidates.max
else
  N - (even_no_op_count + odd_no_op_count)
end

puts ans
