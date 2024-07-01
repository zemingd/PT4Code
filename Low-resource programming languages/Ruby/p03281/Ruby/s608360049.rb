n = gets.chomp.to_i

def divisor(num)
  result = []
  i = 1
  while i <= num do
    remainder = num % i
    if remainder == 0
      result << i
    end
    i += 1
  end
  return result
end

res = 0

1.upto(n) do |i|
  res += 1 if i.odd? && divisor(i).length == 8
end

puts res
