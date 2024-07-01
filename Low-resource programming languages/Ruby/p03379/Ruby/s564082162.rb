n = gets.to_i
x = gets.split.map(&:to_i)

sorted_x = x.sort
med1 = sorted_x[n / 2 - 1]
med2 = sorted_x[n / 2]

n.times do |i|
  puts x[i] <= med1 ? med2 : med1
end