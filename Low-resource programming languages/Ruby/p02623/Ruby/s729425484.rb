n,m,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

a_sum = []
sum = 0
s = 0
a.each do |i|
  if sum+i > k
    break
  end
  s += 1
  sum += i
  a_sum << sum
end

b_sum = []
sum = 0
t = 0
b.each do |i|
  if sum+i > k
    break
  end
  t += 1
  sum += i
  b_sum << sum
end

max = s
f = 0
(0...s).reverse_each do |i|
  red = k-a_sum[i]
  (f...t).each do |j|
    if red >= b_sum[j]
      if i+1+j+1 > max
        max = i+1+j+1
      end
    else
      f = j
      break
    end
  end
end

p max