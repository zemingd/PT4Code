n,m = gets.chomp.split(" ").map(&:to_i)

max_l = 0
min_r = n
m.times do |i|
  l,r=gets.chomp.split(" ").map(&:to_i)
  max_l = l if l > max_l
  min_r = r if r < min_r
end

result = min_r - max_l + 1
if result > 0 then
  puts result
else
  puts 0
end
