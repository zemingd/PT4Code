n,l = gets.split(" ").map(&:to_i)
pies = []
aji = 0
(1..n).each do |ap|
    aji = l.to_i + ap.to_i - 1
    pies.push(aji)
end

result = pies.sort_by do |i|
    i.abs
end

result[0] = 0
sum = 0
result.each{|i| sum = sum + i }
puts sum