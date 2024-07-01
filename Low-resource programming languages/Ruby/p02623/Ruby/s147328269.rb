00238kuroda@0247y-kuroda-2 atcoder % vi ITP1_3_D.rb
n, m, k = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

cnt = 0

while k > 0 && !(a.size == 0 && b.size == 0)
  return 0 if cnt == 0 && (k < a[0] && k < b[0])
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