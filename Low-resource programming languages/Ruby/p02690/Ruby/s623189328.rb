x = gets.to_i

# a^5 - b^5 = x
# (a-b)(a^4+a^3b+a^2b^2+ab^3+b^4) = x
# x=k*lと因数分解 (k<=l)
# x > 0、R >= 0だから？、(a-b)>0
# aは絶対に0より大きい
# a-b=kだからb=a-k

def calc(a, b)
  a**4 + a**3 * b + a**2 * b**2 + a * b**3 + b**4
end

(1..x).each do |k|
  next if x % k != 0
  l = x / k
  (1..l).each do |a|
    break if a**4 > l
    b = a - k
    if calc(a, b) == l
      puts "#{a} #{b}"
      exit(0)
    end
  end
end
