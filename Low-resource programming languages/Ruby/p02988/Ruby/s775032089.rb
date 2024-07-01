n = gets.chomp.to_i
p = gets.chomp.split(' ').map(&:to_i)

counter = 0
for i in 1..(p.count-1-1)
  if p[i-1] < p[i] && p[i] < p[i+1]
    counter += 1
  elsif p[i-1] > p[i] && p[i] > p[i+1]
    counter += 1
  end
end

puts counter