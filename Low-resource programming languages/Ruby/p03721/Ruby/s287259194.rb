n,k = gets.chomp.split.map(&:to_i)
arr = []
a = Array.new(n)
b = Array.new(n)

for i in 0..n-1
  a[i],b[i] = gets.chomp.split.map(&:to_i)
  b[i].times do
    arr << a[i]
  end
end
arr.sort!
puts arr[k-1]