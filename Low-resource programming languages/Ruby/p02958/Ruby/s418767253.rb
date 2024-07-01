N = gets.to_i
p = gets.split.map(&:to_i)

pp = (1..N).to_a

diff = 0
N.times do |i|
  diff += 1 if p[i] != pp[i]
end

if diff == 2 or diff == 0
  puts 'YES'
else
  puts 'No'
end