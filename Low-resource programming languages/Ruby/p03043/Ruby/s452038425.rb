nk = gets.chomp.split
n = nk[0].to_i
k = nk[1].to_i

sum = 0
1.upto(n) do |i|
    if i >= k
        sum = sum += Rational(1, n)
    else   
      l = (Math.log2(k)-Math.log2(i)).ceil #1/2を何回かければいいか
      t = Rational(1, n) * (Rational(1, 2) ** l)
      sum += t
    end
end

p sum.to_f
