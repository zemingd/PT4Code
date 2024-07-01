n,m=gets.split.map(&:to_i)
x=gets.split.map(&:to_i).sort
if n>=m
  p 0
  exit
end
l=x.each_cons(2).map{|a,b| b-a}
p l.sort[0..-n].sum
