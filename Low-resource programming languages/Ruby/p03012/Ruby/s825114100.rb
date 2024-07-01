gets
w=gets.split.map(&:to_i)
d=[]
1.upto(w.size) do |i|
  d.push (w[0,i].sum-w[i..-1].sum).abs
end
p d.min