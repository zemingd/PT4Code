n, m, k = gets.split(" ").map(&:to_i)
books_a = gets.split(" ").map(&:to_i)
books_b = gets.split(" ").map(&:to_i)

sum_a = []
books_a.length.times do |i|
  break if k < books_a[i]
  k -= books_a[i]
  sum_a << books_a[i]
end

sum_b = []
books_b.length.times do |i|
  break if k < books_b[i]
  k -= books_b[i]
  sum_b << books_b[i]
end

puts sum_a.length + sum_b.length