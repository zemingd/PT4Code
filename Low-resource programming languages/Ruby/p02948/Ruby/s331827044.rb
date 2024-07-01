n,m = gets.split.map(&:to_i)
ab =
  readlines.map do |i|
    i.chomp.split.map(&:to_i)
  end.to_a

days = 1.upto(m).map.to_a
sorted = ab.sort{|a,b| b[1] <=> a[1]}

sum = 0
# 報酬が大きい順に見ていけばGreedyで最適解でそう
# O(mn)を避けるためにbsearchを使うけど、dayで回すと難しいからworkで回す
sorted.each do |a, b|
  break if days.size == 0

  # 報酬もらえるまでの猶予日リストからworkの日数以上の日を消す
  day = days.bsearch_index{|i| i >= a}
  next if day.nil?

  sum += b
  days.delete_at(day)
end

puts sum