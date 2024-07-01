n, m = gets.split.map(&:to_i)
sum = 0
arr = gets.split.map do |x|
  t = x.to_i
  sum += t
  t
end
count = 0
n.times do |i|
  if arr[i] >= sum * (1.to_f / (4 * m))
    count += 1
  end
  if count == m
    puts "Yes"
    exit
  end
end
puts "No"
