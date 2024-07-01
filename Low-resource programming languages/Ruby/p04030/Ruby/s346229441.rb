s = gets.chomp.chars

puts s.each_with_object(""){|i, t| 
    case i
    when "0", "1" then
        t << i
    when "B" then
        t.chop! if t != ""
    end
}