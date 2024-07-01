n=gets.to_i
x = gets.split(' ').map(&:to_i)

min=100000000000000000000
min_can=0

for i in 1..100
  min_can=0
  for j in 0..n-1
    min_can+=((i-x[j])**2).abs
  end
  min = min_can if min_can < min
end

puts min
