gets
nums = gets.split.map(&:to_i).partition
head_is_even = nums.size.odd?
heads, tails = nums.partition.with_index do |_, idx|
  head_is_even ? idx.even? : idx.odd?
end
puts (heads.reverse + tails).join(" ")