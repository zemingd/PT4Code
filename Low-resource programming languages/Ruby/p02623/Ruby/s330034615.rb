n, m, k = gets.split(" ").map(&:to_i)
books_a = gets.split(" ").map(&:to_i)
books_b = gets.split(" ").map(&:to_i)

sums_a = []
sum_a = 0
books_a.length.times do |i|
  sum_a += books_a[i]
  break if sum_a >= k
  sums_a << sum_a
end
# p sums_a

combi = []
sums_a.each_with_index do |sum, i|
  lim = k - sum
  p "#{i+1} #{lim}"
  sum_b = []
  books_b.length.times do |j|
    lim -= books_b[j]
    if lim >= 0
      sum_b << books_b[j]
    end
  end
  
  combi << (i+1) + sum_b.length
end

if combi.empty?
  puts 0
else
  puts combi.max
end