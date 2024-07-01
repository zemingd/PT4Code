n = gets.chomp.to_i
s = gets.chomp
ans = []

(1...n).each do |i|
    a = s.slice(0, i).split("")
    b = s.slice(i, n).split("")
    ans.push((a & b).size)
end

puts ans.max