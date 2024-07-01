s = []
gets.scan(/./).each{|c|
    case c
    when "0"
        s << "0"
    when "1"
        s << "1"
    when "B"
        s.pop
    end
}
puts s.join
