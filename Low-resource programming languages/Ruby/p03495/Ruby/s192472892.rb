n, k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

u = arr.uniq.length
if u < k
  puts 0
else
  h = arr.group_by(&:itself).map { |k, v| [k, v.count] }.to_h
  a = h.values.sort
  puts a[0, u - k].inject(:+)
end
