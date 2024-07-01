n,m=gets.split.map(&:to_i)
rr=[]
m.times do |i|
  a,b=gets.split.map(&:to_i)
  rr << Range.new(a,b)
end
rr.sort!{|r1,r2|  r1.end <=> r2.end}
ans=[]
rr.each do |r|
  unless ans.any? && r.include?(ans.last)
    ans << r.end-1
  end
end
puts ans.size
