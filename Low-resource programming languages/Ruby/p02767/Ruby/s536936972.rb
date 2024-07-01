n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
max = 0;min = a[0];now = 0
n.times do |x|
if a[x] > max
	max = a[x]
end
if a[x] <  min
	min = a[x]
end
end
ans = 0
min.step(max) do |y|
  now = 0
  n.times do |z|
  now = now + ((a[z] - y)*(a[z] - y))
  end
  if ans == 0 || now < ans
    ans = now
  end
end
puts ans