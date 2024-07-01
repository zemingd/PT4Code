n,k = gets.chomp.split.map(&:to_i)
a = Array.new(n)
b = Array.new(n)

for i in 0..n-1
  a[i],b[i] = gets.chomp.split.map(&:to_i)
end

for i in 0..n-1
  k = k - b[i]
  if k <= 0
    puts a[i]
    break
  end
end