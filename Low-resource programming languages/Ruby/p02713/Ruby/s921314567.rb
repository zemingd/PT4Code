k=gets.to_i
ans=0
(1..k).each do |a|
  (1..k).each do |b|
    (1..k).each do |c|
      ans+=a.gcd(b).gcd(c)
    end
  end
end
p ans