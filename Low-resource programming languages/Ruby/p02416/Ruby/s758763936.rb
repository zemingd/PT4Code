loop do
    s= gets.chomp
    break if s == '0'
    res = 0
    s.length.times do |i|
        res += s[i].to_i
    end
    puts res
end
