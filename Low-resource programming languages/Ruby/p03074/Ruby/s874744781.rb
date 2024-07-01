n, k = gets.split.map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
ary = [];
f = nil
s.each do |i|
  f.nil? || i.odd? != f ? ary << [i.odd?, 1] : ary[-1][1] += 1
  f = i.odd?
end

result = 0
c = ary.size-k*2-1
c = 0 if c.negative?
(0..c).each do |i|
  len = i+k*2 > ary.size ? ary.size : i+k*2
  result_tmp = 0
  result_tmp = ary[i..len].inject(0){|s, e| s + e[1]} if ary[i][0]
  result_tmp = ary[i..len-1].inject(0){|s, e| s + e[1]} unless ary[i][0]
  result = result_tmp if result < result_tmp
end

puts result
