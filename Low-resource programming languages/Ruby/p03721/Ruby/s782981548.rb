n, k = gets.split.map(&:to_i)
a = Array.new(n){gets.split.map(&:to_i)}
a.sort_by!{|x, y| x}
ans = a[0][0]
n.times do |i|
  ans = a[i][0]
  k -= a[i][1]
  break if k <= 0
end
puts ans