n = gets.to_i
a = gets.chomp.split
b = gets.chomp.split
c = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
    b[i] = b[i].to_i
    c[i] = c[i].to_i if i < n-1
end

satisfaction = b[a[0]-1]
(n-1).times do |i|
    satisfaction += b[a[i+1]-1]
    satisfaction += c[a[i]-1] if a[i+1] == a[i]+1
end

puts satisfaction