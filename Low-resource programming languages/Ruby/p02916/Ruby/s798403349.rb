n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
ans = 0
 
n.times {|i|
    ans += b[a[i] - 1]
    if (a[i] + 1 == a[i + 1]) then ans += c[a[i] - 1] end
}

puts ans