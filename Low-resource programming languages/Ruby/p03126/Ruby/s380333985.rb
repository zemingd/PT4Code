_,*k=$<.map{|l|l.split.map(&:to_i)[1..-1]}
t=k[0]
x=t
(1...k.size).map{|i|x=k[i]&t;t=x}
p x.size