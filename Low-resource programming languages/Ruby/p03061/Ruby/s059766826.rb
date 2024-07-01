gets.to_i
numbers=gets.chomp.split.map(&:to_i)

# numbersの最小値で割り切れない値を特定し、それを削除
will_be_deleted = numbers.sort!.select { |i| i.odd? }.last
numbers.delete(will_be_deleted)

# 最大公約数算出
def gcd(a, b)
  a, b = b, a if a < b
  loop do
    m = a % b
    return b if m == 0
    a, b = b, m
  end
end

max=0

numbers.each_with_index do |num, idx|
  if idx == 0
    max = gcd(num, numbers[idx+1])
  else
    max = gcd(num, max)
  end
end

puts max
