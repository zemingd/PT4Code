N,K=gets.split.map &:to_i
S=gets.strip
class String
  def string_cnt(arr)
    out=Array.new
    cnt=0
    change=arr.index(self[0])
    for i in 0...self.size
      if arr[change]==self[i]
        cnt+=1
      else
        out << cnt
        cnt=1
        change=(change+1)%arr.size
      end
    end
    out << cnt
    return out.delete_if{|x|x==0}
  end
end
as=S.string_cnt(["0","1"])

if S[0]=="0"
  if as.size <= 2*K
    ans=as.inject(:+)
  else
    cnt=0
    i=0
    while true
      cnt=cnt < as[i,2*K].inject(:+) ? as[i,2*K].inject(:+) : cnt
      i+=1
      break if i+2*K-1==as.size
    end
    ans = cnt
  end
else
  if as.size <= 2*K+1
    ans=as.inject(:+)
  else
    cnt=0
    i=0
    while true
      cnt=cnt < as[i,2*K+1].inject(:+) ? as[i,2*K+1].inject(:+) : cnt
      i+=1
      break if i+2*K==as.size
    end
    ans = cnt
  end
end
puts ans
