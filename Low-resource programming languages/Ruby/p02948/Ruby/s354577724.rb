n,m=gets.split(' ').map(&:to_i)
work=Array.new(n){Array.new(2)}

for i in 0..n-1
  a,b=gets.split(' ').map(&:to_i)
  work[i][0]=a
  work[i][1]=b
end

work.sort!{|a,b| b[1]<=>a[1]}
puts work

blank=Array.new(m+1,0)
worst=0

ncount=0
salary=0

def close(take,blank,worst,m)
  for i in worst..m-take
    i=m-take-i
    if blank[i]==0
      blank[i]=1
      hairubasyo=i
      break
    end
  end
  puts "通過"
  puts hairubasyo
    if hairubasyo==worst
      worst = hairubasyo 
      puts "↓worstの値"
      puts  worst
      while worst!=m
        if blank[worst]==0
          break
          puts worst
        else
          worst+=1
        end
      end
    end

    return worst
  end

while worst!=m && ncount<n
  if work[ncount][0]<=m-worst
    salary+=work[ncount][1]
    worst=close(work[ncount][0],blank,worst,m)
    ncount+=1
  else
    ncount+=1
  end
end

puts salary
