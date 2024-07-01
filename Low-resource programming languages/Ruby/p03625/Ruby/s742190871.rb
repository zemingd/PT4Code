N = gets.to_i
as = gets.split.map(&:to_i)
hash = {}
a2 = [0, 0]
a4 = [0]
as.each do |a|
    hash[a] ||= 0
    hash[a] += 1
    a2.push(a) if hash[a] == 2
    a4.push(a) if hash[a] == 4
end

a2.sort!
a4.sort!

puts [a2[-1] * a2[-2], a4[-1] * a4[-1]].max