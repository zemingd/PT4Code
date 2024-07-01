L, R = gets.chomp.split(' ').map(&:to_i)
min = -1
(L..R).each do |n|
  t = n * (n + 1)
  if L == 0
    min = 0
    break
  end

  if R >= 2019 && t >= 2019
    min = t % 2019
    break
  end
  min = n * (n + 1) if min == -1 || min > (n * (n + 1))
end
print min
