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

n = gets.to_i

ans = 0
(1..n).each do |k|
    next if k.even?
    ans += 1 if 8 == divisor(k).length
end

puts ans