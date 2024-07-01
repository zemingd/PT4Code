k=gets.to_i
ans=0
1.upto(k) do |a|
  1.upto(k) do |b|
    1.upto(k) do |c|
      ans+=a.gcd(b.gcd(c))
    end
  end
end
puts ans
