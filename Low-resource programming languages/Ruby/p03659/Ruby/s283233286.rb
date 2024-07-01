n = gets.to_i
a = gets.chomp.split(" ").map!{|i| i.to_i}
y = 0
1.upto(n-1) do |u|
  y += a[u]
end
x = a[0]
min = (x -y).abs

1.upto(n-2) do |j|
  x += a[j]
  y -= a[j]
  if (x-y).abs < min
    min = (x-y).abs
  end
end
puts min
