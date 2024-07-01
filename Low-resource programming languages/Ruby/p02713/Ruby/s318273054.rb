def solve
  k = gets.to_i
  i = k
  j = k
  ans = 0
  (1..k).each do |o|
    (1..i).each do |p|
      (1..j).each do |q|
        ans += o.gcd(p).gcd(q)
      end
    end
  end
  p ans
end

solve