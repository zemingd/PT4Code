n,m=gets.chomp.split(" ").map(&:to_i)
ys={}
lines=[]
ls=[]
while l=gets
  next if l.chomp == ""
  p,y=l.chomp.split(" ").map(&:to_i)
  lines<<{y: y, p: p.to_s}
  ys[p] ||= []
  ys[p] << y
end
ys.each_pair{|_,v|v.sort! if v.length > 1 }
lines.each do |x|
  puts "#{x[:p].rjust(6, "0")}#{ys[x[:p].to_i].bsearch_index {|yy| x[:y]<=yy }.next.to_s.rjust(6, "0")}"
end