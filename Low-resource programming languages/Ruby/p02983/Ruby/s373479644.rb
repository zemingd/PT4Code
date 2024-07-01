L, R = gets.chomp.split(' ').map(&:to_i)
if L.zero?
  print 0
  return
end

min = -1
R.downto(L) do |n|
  t = n * (n - 1)

  min = t % 2019 if t >= 2019

  min = t if min == -1 || min > t
  break if L + 1 == n
end
print min
