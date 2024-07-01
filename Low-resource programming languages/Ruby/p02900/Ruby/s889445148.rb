a,b=gets.split.map(&:to_i).sort
s=[]
f = true
(a ** 0.5).ceil.times do |i|
  if a%(i+1)==0 && b%(i+1)==0
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
p s.size