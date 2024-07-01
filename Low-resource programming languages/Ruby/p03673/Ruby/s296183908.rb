n = gets.to_i
a = gets.split.map(&:to_i)

ls = []
0.upto(n - 1) do |i|
  ls.unshift(a[i]) if i.even?
  ls.push(a[i]) if i.odd?
end

puts n.even? ? ls.reverse.join(' ') : ls.join(' ')