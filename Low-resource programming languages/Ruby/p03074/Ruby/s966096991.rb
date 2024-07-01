n, k = gets.split.map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
ary = [];
f = nil
s.each_with_index do |i, idx|
  ary << [i, idx] if ary.empty? || i != ary.last[0]
end

c = [ary.size-k*2-1, 0].max
res = (0..c).map do |from|
  to = from +  k * 2 + ary[from][0]
  (to >= ary.size ? n : ary[to][1]) - ary[from][1]
end.max

puts res
