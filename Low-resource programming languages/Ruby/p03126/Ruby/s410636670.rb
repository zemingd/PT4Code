n, m = gets.split.map(&:to_i)
_, *likes = gets.split.map(&:to_i)

(n - 1).times do
  _, *a = gets.split.map(&:to_i)

  likes &= a
end

puts likes.count
