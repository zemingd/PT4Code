N = gets.to_i
p = gets.split.map(&:to_i)

diff = 0
N.times do |i|
  diff += 1 if p[i] != i+1
end

if diff == 2 or diff == 0
  puts 'YES'
else
  puts 'NO'
end