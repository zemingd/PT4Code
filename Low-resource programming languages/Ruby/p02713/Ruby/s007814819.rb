def solve
  k = gets.to_i
  i = k
  j = k
  ans = 0
  (1..k).each do |o|
    (1..i).each do |p|
      (1..j).each do |q|
        d = 0
        [o, p, q].each do |m|
          d = d.gcd(m)
        end
        ans += d
      end
    end
  end
  p ans
end
solve

