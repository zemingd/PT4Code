n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
result = [1]

k.times do |j|
  result[0] *= a[0 + j]
end

(n - k).times do |i|
  result[i + 1] = 1
  k.times do |j|
    result[i + 1] *= a[i + 1 + j]
  end
  if result[i] < result[i + 1]
    puts "Yes"
  else
    puts "No"
  end
end
