n, k = gets.strip.split.map(&:to_i)
as = gets.strip.split.map(&:to_i)

x = [0] * 40

maxbit = 0
(0...40).reverse_each {|i|
  m = 1 << i
  if k & m > 0 then
    maxbit = i
    break
  end
}
if maxbit == 0 then
  puts as.inject(:+)
else
  ans = 0
  (0...40).reverse_each {|i|
    next if i > maxbit
    m = 1 << i
    c = as.map{|x| x & m > 0 ? 1 : 0}.inject(:+)
    if c > n - c then
      x[i] = 0
      ans += m * c
    else
      x[i] = 1
      ans += m * (n-c)
    end
  }
  puts ans
end
