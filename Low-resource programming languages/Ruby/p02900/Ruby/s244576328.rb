A,B=gets.split.map(&:to_i)
#A,B=10**12, 10**12-100


if A == B
  ans=0
  n = Math.sqrt(A).to_i
  (1..n).each do |i|
    if A % i == 0
      ans+=1
    end
  end
  p ans
  
else
  n = A.gcd(B)
  kou=[]
  (1..n).each do |i|
    if A%i == 0 && B%i == 0
      kou << i
    end
  end
  ans=[]
  size=kou.size
  size.times do |i|
    flag=true
    size.times do |j|
      next if i == j
      next if j == 0
      if kou[i]%kou[j] == 0
        flag=false
      end
    end
    ans << kou[i] if flag
  end
  p ans.size
end