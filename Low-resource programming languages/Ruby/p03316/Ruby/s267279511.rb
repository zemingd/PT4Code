def s(n)
  ret=0
  while n>0
    ret+=n%10
    n/=10
  end
  ret
end

n=gets.to_i
puts n%s(n)==0 ? "Yes" : "No"