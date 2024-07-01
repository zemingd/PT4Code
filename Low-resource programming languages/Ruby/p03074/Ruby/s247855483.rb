n, k = gets.split.map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
ary = [];
f = nil
s.each_with_index do |i, idx|
  ary << [i.odd?, idx] if ary.empty? || i.odd? != ary.last[0]
end
ary << [nil, n]

c = [ary.size-k*2-1, 0].max
res = (0..c).map do |i|
  len = k * 2
  len += 1 if ary[i][0]
  len = ary.size - i - 1 if i + len > ary.size - 1
  ary[i+len][1] - ary[i][1]
end.max

puts res
