L, R = gets.chomp.split(' ').map(&:to_i)
if L.zero?
  print 0
  return
end

min = -1
(L..R).each do |n|
  t = (n * (n + 1)) % 2019

  min = t if min == -1 || min > t
  break if min == 0
  break if R - 1 == n
end
print min
