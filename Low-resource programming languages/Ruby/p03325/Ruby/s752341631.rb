N = gets.chomp.split(" ").map(&:to_i)
strs = gets.chomp.split(" ").map(&:to_i)

i = 0
strs.select!(&:even?)
while strs.select(&:even?).max
  i += 1
  max_even_index = strs.index(strs.select(&:even?).max)
  strs[max_even_index] = strs[max_even_index] / 2
end
puts i
