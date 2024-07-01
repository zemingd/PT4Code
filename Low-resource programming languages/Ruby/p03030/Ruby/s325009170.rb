n=gets.chomp.to_i
hash={}
(1..n).each do |i|
  s,p=gets.chomp.split
  p=p.to_i
  hash.store([s,p],i)
end

#p hash
hash_sorted=hash.sort_by{|list,i| [list[1],
-1 * list[0]] }.to_h
#p hash_sorted

hash_sorted.each do |list,i|
  puts i
end
