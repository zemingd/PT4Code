gets
w=gets.split.map(&:to_i)
d=[]
1.upto(w.size){|i|d.push (w[0,i].sum-w[i..-1].sum).abs}
p d.min