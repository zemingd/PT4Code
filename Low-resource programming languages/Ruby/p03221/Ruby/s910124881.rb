N,M=gets.split.map &:to_i
Y=Array.new()
M.times{|i|
  a,b=gets.split.map &:to_i
  l=0
  i.times{|j|
    if Y[j][0]==a-1 then
      if Y[j][1]<b then
        l+=1
      else
        Y[j][2]+=1
      end
    end
  }
  Y[i]=[a-1,b,l]
}
M.times{|i|
  printf("%06d%06d\n",Y[i][0]+1,Y[i][2]+1)
}