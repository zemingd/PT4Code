n = gets.chomp
n.length.times do |i|
    case n[i]
    when "1"
        print "9"
    when "9"
        print "1"
    end
end
print "\n"