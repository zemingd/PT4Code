n, m, k = gets.split(" ").map(&:to_i)
books_a = gets.split(" ").map(&:to_i)
books_b = gets.split(" ").map(&:to_i)

sums_a = []
sum_a = 0
books_a.length.times do |i|
  sum_a += books_a[i]
  sums_a << sum_a
end

sums_a.delete_if{|item| item >= k}

combi = []
sums_a.each_with_index do |sum, i|
  lim = k - sum
#   p "#{i+1} #{k}"
  sum_b = []
  books_b.length.times do |j|
    lim -= books_b[j]
    if lim >= 0
      sum_b << books_b[j]
    end
  end
#   p sum_b
  combi << (i+1) + sum_b.length
end

if combi.empty?
  puts 0
else
  puts combi.max
end