n=gets.to_i
a=gets.split.map(&:to_i).sort
s=[]
v=[0]
a.each do |b|
  f=true
  if b==s[-1]
    v << b if v[-1]!=b
    f=false
  else
    bs=b/2
    s.each do |ss|
      break if ss>bs
      if b%ss==0
        f=false
        break
      end
    end
  end
  if f
    s << b
  end
end
puts (s-v).size
