a,b=gets.split.map(&:to_i).sort
if a==1
  p 1
  exit
end
s=[]
t=[]
f = true
(a ** 0.5).floor.times do |i|
  if a%(i+1)==0 && b%(i+1)==0
    t << a/(i+1)
    s.each do |ss|
#      p [i+1, ss, (i+1)%ss]
      if (i+1)%ss==0 && ss!=1
        f=false
        break
      end
    end
    if f
      s << (i+1)
    end
    f = true
  end
end
t.reverse.each do |tt|
  if b%tt==0
    s.each do |ss|
      if tt<=ss || (tt%ss==0 && ss!=1)
        f=false
        break
      end
    end
    if f
      s << tt
    end
    f=true
  end
end
p s.size
