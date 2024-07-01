n = gets.to_i
s = gets.chomp


a = []
n.times {|i|
    a[i] = s[0...i].count("W") + s[(i+1)..(-1)].count("E")
}
puts a.min