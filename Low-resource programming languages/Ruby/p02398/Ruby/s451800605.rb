a, b, c = gets.chomp.split.map(&:to_i)
ans = 0
a.upto(b) do{|x|
    ans = c % x == 0 ? ans+1 : ans
}
puts ans
