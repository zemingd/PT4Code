n, k, q = gets.split.map(&:to_i)
a = [0] * n

while gets
  x = $_.to_i
  a[x-1] += 1
end
a.each do |x|
  puts x + k > q ? 'Yes' : 'No'
end
