s = gets.chomp
num = 0
s.length.times do |i|
    case s[i]
    when "+"
        num += 1
    when "-"
        num -= 1
    end
end
puts num