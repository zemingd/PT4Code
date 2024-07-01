n,a,b=gets.split.map(&:to_i)
count_a=[]
(1..n).each do |_n|
  y = _n.to_s.chars.map(&:to_i).inject(&:+)
  if y>=a && y<=b 
    count_a << _n
  end
end
print count_a.inject(&:+)
