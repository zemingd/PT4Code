def comp(a,b)
  a.each_with_index{|v,i|
    return 1 if v<b[i]
    return -1 if v>b[i]
  }
  0
end

n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

Needed_match_num=[0,2,5,5,4,5,6,3,7,6]
digits={}
a.sort.reverse.each{|d|
  num=Needed_match_num[d]
  digits[num]||=d
}
a=digits.values
a.sort_by!{|d|Needed_match_num[d]}
dp=Array.new(n+9)
dp[n]=[0]*a.size
a.each_with_index{|d,i|
  nmn=Needed_match_num[d]
  n.downto(1){|j|
    if dp[j]
      temp=dp[j].dup
      temp[i]+=1
      if dp[j-nmn]
        if comp(dp[j-nmn],temp)==1
          dp[j-nmn]=temp
        end
      else
        dp[j-nmn]=temp      
      end
    end
  }
}

ans=[]

a.each_with_index{|d,i|
  ans+=[d]*dp[0][i]
}

puts ans.sort.reverse.join