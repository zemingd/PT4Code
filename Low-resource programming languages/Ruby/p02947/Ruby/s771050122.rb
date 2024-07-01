n = gets.to_i
a = Hash.new(0)
n.times do |i|
    s = gets.chomp.split("").sort.join("")
    a[s] += 1
end
ans = 0
a.values.each do |i|
    ans += i*(i-1)/2
end
puts ans