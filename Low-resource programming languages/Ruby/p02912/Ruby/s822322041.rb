n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
m.times do
  b=a.pop/2
  s=a.bsearch_index {|x| x>=b}
  if s!=nil
    a.insert(s,b)
  else
    a << b
  end
end
puts a.inject(:+)
