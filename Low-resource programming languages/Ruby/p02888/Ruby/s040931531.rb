n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
total = 0
(0...n).each do |i|
  ((i + 1)...n).each do |j|
    sub = arr.slice((j + 1)..n).reverse
    len = (arr[i] - arr[j]).abs
    idx = sub.bsearch_index { |k| k > len }
    total += sub.count - idx unless idx.nil?
  end
end
puts total