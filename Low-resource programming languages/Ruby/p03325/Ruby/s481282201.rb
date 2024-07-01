def x(n)
  s=0
  while n.even? do
    s+=1
    n/=2
  end
  s
end
gets
p gets.split.map(&:to_i).inject(0){|s,i|s+x(i)}
