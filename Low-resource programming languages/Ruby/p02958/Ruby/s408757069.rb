N = gets.to_i
q = gets.split.map(&:to_i)

cnt = 0
N.times do |i|
  cnt += 1 if q[i] != i + 1
end

if cnt <= 2
  puts 'YES'
else
  puts 'NO'
end
