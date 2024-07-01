#ABC172C.rb
n,m,k = gets.split.map(&:to_i)
ar = gets.split.map(&:to_i)
br = gets.split.map(&:to_i)

max_count = 0
asum = 0
bsum = br.sum
j = m

(0..n).each do |i|
  if i == 0
    asum = 0
  else
    asum += ar[i-1]
  end
  
  if asum > k
    break
  end
  
  while bsum > k - asum
    j -= 1
    bsum -= br[j]
  end

  count = i + j

  if max_count < count
    max_count = count
  end
end

puts max_count
