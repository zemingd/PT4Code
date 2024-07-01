n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
m.times do
  b=a.pop>>1
  s=a.bsearch_index {|x| x>=b}
  if s==nil
    a << b
  else
    a.insert(s,b)
  end
end
puts a.inject(:+)
