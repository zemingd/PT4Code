n=gets.chomp.to_i
a=gets.chomp.split(" ").map{|s| s.to_i}
b=gets.chomp.split(" ").map{|s| s.to_i}
c=Array.new
ans=0
for i in 0..n-1
  if a[i]>=b[i]
    ans+=b[i]
  else
    if a[i+1]-(b[i]-a[i])>0
      a[i+1]-=b[i]-a[i]
      ans+=b[i]
    else
      ans+=a[i]+a[i+1]
      a[i+1]=0
    end
  end
end
puts ans