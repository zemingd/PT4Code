n, k = gets.chomp.split.map(&:to_i)
book = Hash.new(0)
n.times do |_|
  a, b = gets.chomp.split.map(&:to_i)
  book[a] += b
end
arr = book.to_a.sort_by! {|key, val| key }
res = -1
arr.each do |key, val|
  break if k <= 0
  res = key
  k -= val
end
puts res