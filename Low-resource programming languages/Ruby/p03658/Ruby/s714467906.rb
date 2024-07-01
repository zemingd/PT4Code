n,k = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i).sort.reverse

ans = []

ls.each_with_index do |num, i|
  ans << num if i < k
  break if i >= k
end

puts ans.inject(:+)

