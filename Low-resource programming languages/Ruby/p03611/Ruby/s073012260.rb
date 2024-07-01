n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
max = a.max
num = Array.new(max+1,0)
ans = 0
n.times do |i|
  if a[i] != max
    num[a[i] + 1] += 1
    ans = num[a[i]+1] if ans < num[a[i]+1]
  end
  if a[i] != 0
    num[a[i] - 1] += 1
    ans = num[a[i]-1] if ans < num[a[i]-1]
  end
  num[a[i]] += 1
  ans = num[a[i]] if ans < num[a[i]]
end
puts ans