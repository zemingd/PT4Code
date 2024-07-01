k=gets.to_i
ans=0
1.upto(k) do |i|
  1.upto(k) do |j|
    1.upto(k) do |k|
      ans+=[i,j,k].inject(:gcd)
    end
  end
end
puts ans
