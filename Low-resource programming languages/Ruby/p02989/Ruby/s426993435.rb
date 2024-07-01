N = gets.to_i
d = gets.split.map(&:to_i).sort
cnt = 0
l = 0
r = d.size - 1
p d
while (r - l) > 1
  m = (l + r) / 2
  k = d[m]
  abc, arc = d.partition{|s| s > k}
  #puts "l=#{l}, r=#{r} : k=#{k} : ABC=#{abc.size}, ARC=#{arc.size}"
  if abc.size == arc.size
    cnt = d[m+1] - d[m]
    break
  elsif abc.size > arc.size
    l = m
  else
    r = m
  end
end
puts cnt