a,b = gets.chomp.to_i,gets.chomp.split.map(&:to_i)
o,e = [],[]
for i in 0...(a/2)
  o << b[i*2]
  e << b[(i*2)+1]
end
if b.uniq.size == 1#全部おんなし
  puts a/2
elsif o.uniq.size != 1 || e.uniq.size != 1#あかんやつ
  puts (o.size - o.count(o.max_by{|v|o.count(v)}))+(e.size - e.count(e.max_by{|v|e.count(v)}))
elsif o.uniq.size == 1 && e.uniq.size == 1#いいやつ
  puts "0"
end