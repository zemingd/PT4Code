n = gets.to_i
p = gets.split.map(&:to_i)
cnt = 0

n.times do |i|
  if i+1 != p[i]
    cnt += 1
  end
end

if cnt == 2 or cnt == 0
  puts 'YES'
else
  puts 'NO'
end
