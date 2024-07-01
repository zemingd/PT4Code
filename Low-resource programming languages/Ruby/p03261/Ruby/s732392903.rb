num = gets.to_i
a = []
num.times do | i |
    puts i
    w = gets.chomp
    if i != 0
        if w[1] != a[-1][-1] || a.include?(w)
            print "No"
            break
        end
    elsif i == num-1
        print "Yes"
    end
    a << w
end
