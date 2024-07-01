h,w=gets.chomp.split(" ").map{|s| s.to_i}
a=[]
a[0]=Array.new(w+2,1)
for i in 1..h
  a[i]=gets.chomp.split("").map{|s|
    if s=="."
      s=0
    else
      s=1
    end
  }
  a[i].insert(0,1).insert(w+1,1)
end
a[h+1]=Array.new(w+2,1)
ans=0
tem=Array.new

for i in 0..h+1
  tem[i]=Array.new
  for j in 0..w+1
    tem[i][j]=a[i][j]
  end
end

while true
  for i in 1..h
    for j in 1..w
      if a[i][j]==1
        ###########
        tem[i-1][j]=1
        tem[i+1][j]=1
        tem[i][j-1]=1
        tem[i][j+1]=1
        ###########
      end
    end
  end

  if tem==a
    break
  else
    ans+=1

    for i in 1..h
      for j in 1..w
        a[i][j]=tem[i][j]
      end
    end

  end
end
puts ans
