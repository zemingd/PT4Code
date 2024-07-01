n, m, k = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

cnt = 0

while k > 0
  break cnt = n + m if cnt == 0 && k > a.sum + b.sum

  break if k < a[0] && k < b[0]
  if b.empty? || (a.size > 0 && b.size > 0 &&  a[0] < b[0])
    k = k - a[0]
    a.delete_at(0)
  elsif a.empty? || (a.size > 0 &&  b.size > 0 && a[0] > b[0])
    k = k - b[0]
    b.delete_at(0)
  end
  break if a.size == n && b.size == m
  cnt += 1 if k >= 0
  break if a.size == 0 && b.size == 0
end

puts cnt