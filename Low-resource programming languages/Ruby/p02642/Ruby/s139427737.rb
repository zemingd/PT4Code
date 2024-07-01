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
      break
    elsif b%ss==0
      f=false
      braek
    end
  end
  if f
    s << b
  end
end
puts (s-v).size
