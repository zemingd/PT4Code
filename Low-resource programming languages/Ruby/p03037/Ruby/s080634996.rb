N,M = gets.split.map(&:to_i)
max_l = 0
min_r = 10**5
M.times do |i|
    l,r = gets.split.map(&:to_i)
    max_l = l if max_l < l
    min_r = r if min_r > r
end
if max_l <= min_r then
    puts min_r-max_l+1
else
    puts 0
end