N = gets.to_i
num = gets.split.map(&:to_i)
count = N

0.upto(num.count-2) do |i|
  sum = num[i]
  xor_sum = num[i]
  (i+1).upto(num.count-1) do |j|
    sum += num[j]
    xor_sum ^= num[j]
    count += 1 if sum == xor_sum
  end
end

puts count