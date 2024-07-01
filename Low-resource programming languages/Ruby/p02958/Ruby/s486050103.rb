n = gets.chomp.to_i
p = gets.split.map(&:to_i)
hikaku = [*(1..n)]
cnt = 0
(0..(n-1)).each do |i|
  cnt += 1 if hikaku[i] != p[i]
end

if cnt == 0 || cnt == 2
  puts 'YES'
else
  puts 'NO'
end