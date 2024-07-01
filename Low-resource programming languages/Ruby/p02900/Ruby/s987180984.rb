a,b=gets.chomp.split(" ").map(&:to_i)
r=a<b ? a : b
divisorList=[]
prime=Array.new(r+1){1}
((r**0.5).to_i+1).times do|i|
  next if i.zero?
  if (a%i).zero? and (b%i).zero?
    divisorList.push(i) 
    divisorList.push(a/i) if i!=a/i and (b% (a/i)).zero?
  end
  next if i==1
  j=2
  if prime[i]==1
    while j*i<=r
      prime[j*i]=0
      j+=1
    end
  end
end
ans=0
divisorList.each do|c|
  ans+=1 if prime[c]==1
end
puts ans
