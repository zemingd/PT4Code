s = gets.chomp

3.times.each{|i|
    if s[i] == '1'
        s[i] = '9'
    elsif s[i] == '9'
        s[i] = '1'
    end
}
puts s
