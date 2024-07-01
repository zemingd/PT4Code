n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
bit_count=Array.new(64,0)
a.each{|v|
  64.times{|i|bit_count[i]+=v[i]}
}

ans=0
strict_flag=true
63.downto(0){|i|
  coef=1<<i
  if strict_flag
    if k[i]==0
      ans+=coef*bit_count[i]
    else
      if 2*bit_count[i]>n
        ans+=coef*bit_count[i]
        strict_flag=false
      else
        ans+=coef*(n-bit_count[i])
      end
    end
  else
    ans+=coef*[n-bit_count[i],bit_count[i]].max
  end
}

puts ans