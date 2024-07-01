n=gets.to_i
a=gets.split.map(&:to_i).sort
s=[]
v=[]
a.each do |b|
  f=true
  s.each do |ss|
    if b==ss
      v << ss
      f=false
    elsif b%ss==0
      f=false
    end
  end
  if f
    s << b
  end
end
puts (s-v).size
