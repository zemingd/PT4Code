N, L = gets.split.map!(&:to_i)
taste = []
min = (L + 0 - 1)**2
min_num = 0
N.times do |i|
  tmp = L + i - 1
  if min > tmp**2
    min_num = i
  end
  taste << tmp
end
sum_taste = 0
N.times do |i|
  if i == min_num
    sum_taste += 0
  else
    sum_taste += taste[i]
  end
end
puts sum_taste