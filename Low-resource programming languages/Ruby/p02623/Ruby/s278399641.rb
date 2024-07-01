n, m, k = gets.chomp.split(' ').map(&:to_i)

a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

cnt = 0
total = 0

(0..n-1).each do |x|
  total += a[x]
  cnt += 1
  if total > k
    total -= a[x]
    cnt -= 1
    break
  end
end

(0..m-1).each do |y|
  total += b[y]
  cnt += 1
  if total > k
    cnt -= 1
    break
  end
end

p cnt