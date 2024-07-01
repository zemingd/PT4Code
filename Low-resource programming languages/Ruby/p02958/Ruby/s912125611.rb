N = gets.to_i
P = gets.split.map(&:to_i)

cnt = 0

P.each.with_index(1) do |v, i|
  cnt += 1 if v != i
end

if cnt <= 2
  puts 'YES'
else
  puts 'NO'
end
