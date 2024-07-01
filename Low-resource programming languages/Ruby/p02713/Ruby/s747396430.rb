N=gets.to_i
sum = 0
N.times do |nA|
  nA += 1
  N.times do |nB|
    nB += 1
      N.times do |nC|
        nC += 1
        sum += nA.gcd(nB).gcd(nC)
      end    
  end
end
puts sum