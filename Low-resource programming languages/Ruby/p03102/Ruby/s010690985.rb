N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ans = 0

def calc_product(a)
  sum = C
  a.each_index do |i|
    sum = sum + a[i]*B[i]
  end
  return sum
end
N.times do
  a = gets.split.map(&:to_i)
  if calc_product(a) > 0
    ans = ans+1
  end
puts ans
end