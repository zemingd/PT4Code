n, m, k = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

cnt = 0

while k > 0 && !(a.size == 0 && b.size == 0)
  break if cnt == 0 && (k < a[0] && k < b[0])
  if (a.size * b.size > 0 &&  a[0] < b[0]) || b.empty?
    k = k - a[0]
    a.shift
  elsif (a.size * b.size > 0 && a[0] > b[0]) || a.empty?
    k = k - b[0]
    b.shift
  end
  cnt += 1 if k >= 0
end

puts cnt