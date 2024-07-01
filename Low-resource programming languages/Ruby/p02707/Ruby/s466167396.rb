N = gets.to_i
A = gets.split.map &:to_i
buka = Hash.new(0)
A.each do |a|
    buka[a] += 1
end
(1..N).each do |i|
    p buka[i]
end