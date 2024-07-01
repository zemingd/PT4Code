n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
r = 0
 
n.times do |n|
  r += b[n]
  if (a[n + 1] != nil) && (a[n + 1] - a[n]) == 1
    r += c[a[n] - 1]
  end
end
p r