n=gets.to_i
aa=gets.chomp.split.map(&:to_i)

def fn(aa, b)
  t=0
  aa.each_with_index do |a, i|
    t+=(a-(b+i+1)).abs
  end
  t
end

mt=fn(aa,0)
if (mt > fn(aa,1))
  (1..(aa.max)).map do |b|
    t = fn(aa, b)
    mt=t if t < mt
  end
end
if (mt > fn(aa,-1))
  ((-aa.max)..-1).map do |b|
    t = fn(aa, b)
    mt=t if t < mt
  end
end
puts mt
