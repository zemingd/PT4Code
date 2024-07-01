N = gets.to_i
A = gets.split.map(&:to_i).sort

cnt = Hash.new(0)

A.each do |a|
  cnt[a-1] += 1
  cnt[a] += 1
  cnt[a+1] += 1
end

p cnt.max{ |x, y| x[1] <=> y[1] }[1]
