x, n = gets.split.map(&:to_i)
if n == 0
    p = gets
    puts x
    exit
end
p = gets.split.map(&:to_i)
min = 100
cand = 100
0.upto(200) do |pp|
    next if p.include?(pp)
    diff = (x - pp).abs
    if diff < min
        min = diff
        cand = pp
    end
end
puts cand