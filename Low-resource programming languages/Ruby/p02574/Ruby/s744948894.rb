require 'prime'
n,*as=$<.read.split.map &:to_i
c={}
ans=0
as.each{|a|
  a.prime_division.each{|(q,r)|
    if !(t=c[q])
      c[q]=1
    else
      ans=1
      if t<n-1
        c[q]=t+1
      else
        ans=2
        break
      end
    end
  } or break
}
puts %w(pairwise setwise not)[ans]+' coprime'