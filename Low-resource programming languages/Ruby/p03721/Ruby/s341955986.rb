n,k = gets.chomp.split.map(&:to_i)
a = Array.new(n)

for i in 0..n-1
  a[i] = Array.new(2)
  a[i][0],a[i][1] = gets.chomp.split.map(&:to_i)
end

a.sort_by! { |i| i[0]}

for i in 0..n-1
  k = k - a[i][1]
  if k <= 0
    puts a[i][0]
    break 
  end
end