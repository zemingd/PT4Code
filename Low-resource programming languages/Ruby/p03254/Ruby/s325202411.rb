n, x = gets.split.map(&:to_i)
want_candy = gets.split.map(&:to_i).first(n)
cnt = 0

want_candy.sort.each.with_index(1) do |wc, i|
  break if wc > x
  x -= wc
  break if i == n && !x.zero?
  cnt += 1
end

puts cnt
