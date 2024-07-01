N,K = gets.split.map(&:to_i)
V = gets.split.map(&:to_i)

ans = 0
N.times do |l|
  l.upto(N-1) do |r|
    t = N - (r-l+1) 
    next if t > K
    hand = []
    l.times do |i|
      hand << V[i]
    end
    (r+1).upto(N-1) do |i|
      hand << V[i]
    end
    hand.sort!
    
    tmp = hand.empty? ? 0 : hand.reduce(:+)
    (K-t).times do |i|
      break if i >= t || hand[i] > 0
      tmp -= hand[i]
    end
    ans = tmp if tmp > ans
    #p [l,r,t,hand,tmp]
  end
end
tmp = V.reduce(:+)
V.sort!
(K-N).times do |i|
  break if i >= N || V[i] > 0
  tmp -= V[i]
end
ans = tmp if tmp > ans

p ans