n,m=gets.split.map(&:to_i)
rr=[]
m.times do |i|
  a,b=gets.split.map(&:to_i)
  rr << Range.new(a,b,true)
end
rr.sort! do |r1,r2|
  c = r1.first <=> r2.first
  c == 0 ? r1.end <=> r2.end : c
end
rr2=[]
rr.each do |r|
  if rr2.empty? || rr2.last.first != r.first
    rr2 << r
    next
  end
end
prev=rr2.first
rr3=[prev]
(1..(rr2.size-1)).each do |i|
  r=rr2[i]
  unless prev.include?(r.first) && prev.include?(r.end-1) 
    rr3 << r
    prev = r
  end
end

b=[]
rr3.each do |r|
  if b.empty? || !r.include?(b.last-1)
    b << r.end-1
  end
end
puts b.size
