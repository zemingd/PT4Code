n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map{|ai| [1, ai.to_i] }
m.times do
  b, c = gets.chomp.split.map(&:to_i)
  a << [b, c]
end

a = a.sort_by{|ai| -ai[1]}

sum = 0
a.each do |count, num|
  if count >= n
    sum += n * num
    break
  else
    sum += count * num
    n -= count
  end
end

puts(sum)