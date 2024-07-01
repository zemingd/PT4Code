def gcd(p,q)
  return q if p % q == 0
  return gcd(q, p % q)
end
N=gets.to_i
sum = 0
N.times do |nA|
  nA += 1
  N.times do |nB|
    nB += 1
      N.times do |nC|
        nC += 1
        sum += gcd(gcd(nA,nB),nC) 
      end    
  end
end
puts sum