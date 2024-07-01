N = gets.to_i
d = gets.split.map(&:to_i)
half = N/2.to_f
if d[half-1] == d[half] then
    puts 0
    exit
end
min = d[half-1] + 1
max = d[half]
puts max - min + 1
