n = gets.to_i
c = [0, 0, 0]
a = gets.split.map do |e|
    e = e.to_i
    c[e <=> 0] += 1
    e.abs
end

sum = a.inject(:+)
if c[-1].even? || c[0] > 0
    puts sum
else
    puts sum - a.min * 2
end
