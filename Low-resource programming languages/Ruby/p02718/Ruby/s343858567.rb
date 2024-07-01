nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

a = gets.chomp.split
vote = 0
n.times do |i|
    a[i] = a[i].to_i
    vote += a[i]
end

a.sort!.reverse!

result = true
m.times do |i|
    if a[i] < vote / (4.0 * m)
        result = false
        break
    end
end

puts result ? "Yes" : "No"