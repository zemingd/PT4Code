s = gets.chomp
puts s.chars.inject('') { |d,v|
    case v
    when '1'
        d + '1'
    when '0'
        d + '0'
    else
        d.chop
    end
}
