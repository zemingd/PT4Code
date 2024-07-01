N, M= gets.chomp.split.map(&:to_i)
arr = readlines.map(&:chomp).map{|row| row.split(' ').map(&:to_i)}

l_max = 0
r_min = N
for row in arr do
    l_max = row[0] if row[0] > l_max
    r_min = row[1] if row[1] < r_min
end
p r_min - l_max + 1