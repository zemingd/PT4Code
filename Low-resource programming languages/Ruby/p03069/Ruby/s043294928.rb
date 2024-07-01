n = gets.to_i
s = gets.chomp.chars
a = Array.new(n){Array.new(2, 0)}
if s[0] == '.'
  a[0][0] = 1
else
  a[0][1] = 1
end
1.upto(n - 1) do |i|
  if s[i] == '.'
    a[i][0] = a[i - 1][0] + 1
    a[i][1] = a[i - 1][1]
  else
    a[i][0] = a[i - 1][0]
    a[i][1] = a[i - 1][1] + 1
  end
end
min = [a[n - 1][0], a[n - 1][1]].min
n.times do |i|
  min = a[n - 1][0] - a[i][0] + a[i][1] if min > a[n - 1][0] - a[i][0] + a[i][1]
end
puts min