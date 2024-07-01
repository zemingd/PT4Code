n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

answer = []
n.times do
  answer.push(a[n-1])
  n = n - 1
end
puts answer.join(' ')