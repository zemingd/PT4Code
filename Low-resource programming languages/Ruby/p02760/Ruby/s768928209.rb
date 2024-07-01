a = []
3.times do
    a << gets.split("\s").map(&:to_i)
end

a.flatten!

n = gets.to_i

n.times do
  b = gets.to_i
  if i = a.index(b)
    a[i] = -1
  end
end

if ((a[0] < 0 && a[1] < 0 && a[2] < 0) || (a[3] < 0 && a[4] < 0 && a[5] < 0) ||
  (a[6] < 0 && a[7] < 0 && a[8] < 0) || (a[0] < 0 && a[3] < 0 && a[6] < 0) ||
  (a[1] < 0 && a[4] < 0 && a[7] < 0) || (a[2] < 0 && a[5] < 0 && a[8] < 0) ||
  (a[0] < 0 && a[4] < 0 && a[8] < 0) || (a[2] < 0 && a[4] < 0 && a[6] < 0))
  print 'Yes'
else
  print 'No'
end
