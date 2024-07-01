n = gets.to_i
a = gets.split.map(&:to_i)

flag = false
a_sort = a.sort
n.times do |i|
  n.times do |ii|
    a[i], a[ii] = a[ii], a[i]
    flag = true if a_sort == a
    a[i], a[ii] = a[ii], a[i]
  end
end
puts flag ? 'YES' : 'NO'
# y n y
