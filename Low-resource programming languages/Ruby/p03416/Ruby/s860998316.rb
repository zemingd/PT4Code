s, e = gets.split.map(&:to_i)
c = 0
(s..e).each do |i|
  i = i.to_s
  siz = i.length / 2
  c += 1 if i[0..siz] == i.reverse[0..siz]
end
p c