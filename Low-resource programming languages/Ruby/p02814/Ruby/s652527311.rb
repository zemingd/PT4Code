n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
l=a.map{ |e| e/2 }.inject(&:lcm)
p l*2>m ? 0: (m+2*l-1)/(2*l)
