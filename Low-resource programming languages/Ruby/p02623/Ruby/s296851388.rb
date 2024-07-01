n,m,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

a_sum = [0]
sum = 0
a.each do |i|
  if sum+i > k
    break
  end
  sum += i
  a_sum << sum
end

b_sum = [0]
sum = 0
b.each do |i|
  if sum+i > k
    break
  end
  sum += i
  b_sum << sum
end

s = a_sum.size-1
t = b_sum.size-1
max = [s,t].max
t = 0

while(true)
  red = k-a_sum[s]
  if red >= b_sum[t]
    if s+t > max
      max = s+t
    end
    t += 1
    if t > b_sum.size-1
      break
    end
  else
    s -= 1
    if s == 0
      break
    end
  end
end

p max