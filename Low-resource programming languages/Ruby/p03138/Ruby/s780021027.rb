n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
fmax=0
for num in 0..k
  num=num.to_s(2)
  fx=0
  a.each{|an|
    xor=""
    an=an.to_s(2)
    an_s=an.size
    num_s=num.size
    i=[an_s,num_s].max-1
    sa=(an_s-num_s).abs
    if an_s>num_s
      sa.times{num="0"+num}
    else
      sa.times{an="0"+an}
    end
    while i>=0
      if an[i]==num[i]
        xor="0"+xor
      else
        xor="1"+xor
      end
      i-=1
    end
    fx+=xor.to_i(2)
  }
  if fmax<fx then fmax=fx end
end
puts fmax
