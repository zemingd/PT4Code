n,l = gets.split.map(&:to_i)
s = []
(1..n).each {|i| s.push((l+i-1))}
s.delete(s.min_by{|x| (x-0).abs})
p s.sum