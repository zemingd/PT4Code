n, m = gets.chomp.split.map(&:to_i)
answer = Array.new(m, 0)

n.times do
  array = gets.chomp.split.map(&:to_i)
  array.delete_at(0)
  array.each do |i|
    answer[i-1] += 1
  end
end

k = 0
answer.each do |i|
  if i == n
    k += 1
  end
end

puts k