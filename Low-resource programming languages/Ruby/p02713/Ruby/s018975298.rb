def gcd(a,b)
  bigger = [a,b].max
  smaller = [a,b].min
  while(true)
    t = smaller
    smaller = bigger % smaller
    bigger = t
    return bigger if smaller == 0
  end
end

n = gets.chomp.to_i
sum = 0
(1..n).each do |i|
  (1..n).each do |j|
    (1..n).each do |k|
      sum += gcd(gcd(i,j),k)
    end
  end
end
puts sum