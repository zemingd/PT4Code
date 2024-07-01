n, k = gets.strip.split.map(&:to_i)
ary = gets.strip.split.map(&:to_i)
ans = 0
if ary.uniq.size <= k
else
  counts = ary.group_by(&:itself).map{ |k, v| [k, v.count] }.sort_by(&:last)
  (ary.uniq.size - k).times do |i|
    ans += counts[i][1]
  end
end
puts ans