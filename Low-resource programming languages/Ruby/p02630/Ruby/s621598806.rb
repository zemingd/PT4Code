N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
BC = Q.times.map{gets.chomp.split.map(&:to_i)}
sum = a.sum

arr = [0] * ((10 ** 5) + 1)

(0...N).each do |j|
  arr[a[j]] += 1
end

(0...Q).each do |i|
  sum += ((BC[i][1] - BC[i][0]) * arr[BC[i][0]])
  t = arr[BC[i][0]]
  arr[BC[i][1]] += t
  arr[BC[i][0]] = 0
  puts sum
end