n=gets.to_i
ls=gets.split.map(&:to_i).sort
ans=0
1.upto(n-1) do |j|
  k=j+1
  num=0
  0.upto(j-1) do |i|
    absum=ls[i]+ls[j]
    while k<n
      if ls[k]<absum
        num+=1
      else
        break
      end
      k+=1
    end
    ans+=num
  end
end
puts ans
