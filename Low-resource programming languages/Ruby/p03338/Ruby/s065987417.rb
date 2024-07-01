n = gets.to_i
s = gets.chomp
max = 0
1.upto(n - 1){|i|
    a = s[0, i].split("").to_a.uniq
    b = s[i..-1].split("").to_a.uniq
    x = (a - (a - b)).length
    max = x if max < x
}
puts max
