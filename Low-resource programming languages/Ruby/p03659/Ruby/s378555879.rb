n=gets.to_i
a=gets.split.map(&:to_i)
t=a.inject([]){|s,r|s<< r+(s[-1]||0)}
p t[0..-2].map{|i|(2*i-t[-1]).abs}.min