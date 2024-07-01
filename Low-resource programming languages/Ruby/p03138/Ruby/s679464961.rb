n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
fmax=[]
for num in 0..k
  num=num.to_s(2)
  fx=0
  a.each{|an|
    xor=""
    an=an.to_s(2)
    an_s=an.size
    num_s=num.size
    if an_s>num_s
      sa=an_s-num_s
      sa.times{num="0"+num}
    else
      sa=num_s-an_s
      sa.times{an="0"+an}
    end
    i=an.size-1
    (i+1).times{
      if an[i]==num[i]
        xor="0"+xor
      else
        xor="1"+xor
      end
      i-=1
    }
    fx+=xor.to_i(2)
  }
  fmax << fx
end
puts fmax.max
