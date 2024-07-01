def a;gets.split.map &:to_i end
n,m,c=a();b=a();a=n.times.map{a()}
p a.map{|a|a.zip(b).reduce(c){|s,(a,b)|s+a*b}}.delete_if{|n|n<1}.size