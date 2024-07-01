def exp(n)
  return 0 if n == 0
  sum = 0
  sum = (n * (n + 1)) / 2
  sum.to_f / n
end
class Array
  def sum 
    ans = 0
    self.each {|x| ans += x}
    ans
  end
end

n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
h = Array.new
max = -1
for i in 0..n-k
  if max < p[i..i+k-1].sum 
    max = p[i..i+k-1].sum 
    si = i
  end
end
ex = 0
p[si..si+k-1].each{|s| ex += exp s}
puts ex
