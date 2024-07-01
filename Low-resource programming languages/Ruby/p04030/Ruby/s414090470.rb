
s = []
gets.chomp.each_char do |c|
    case c
    when '0', '1'
        s << c
    when 'B'
        s.pop
    end
end

puts s.join