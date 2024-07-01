n, m, c = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
count = 0
n.times do
  a = gets.chomp.split(' ').map(&:to_i)
  sum = 0
  a.each_with_index do |v, i|
    sum += v * b[i]
  end
  sum += c
  count += 1 if sum > 0
end
puts count
