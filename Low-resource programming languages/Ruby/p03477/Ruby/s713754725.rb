n, a, b = gets.chomp.split(" ").map(&:to_i)
def digit_sum(n)
  sum = 0
  while n > 0 do
    sum += n % 10
    n /= 10
  end
  sum
end
ary = []
(1..n).each do |c|
  e = digit_sum(c)
  if a <= e && b >= e 
   ary << c
  end
end
p ary.sum