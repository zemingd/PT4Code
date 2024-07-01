MOD = 1_000_000_007

nn = gets.chomp.to_i

a = []
a = gets.chomp.split.map(&:to_i)

def abs(a,b)
  return a>b ? a-b : b-a
end

sum = a.inject(:+)
b_sum = 0
sa = sum
a.each do |v|
  b_sum += v
  sum -= v
  if sa > abs(b_sum, sum)
    sa = abs(b_sum, sum)
  else
    break
  end
end

p sa