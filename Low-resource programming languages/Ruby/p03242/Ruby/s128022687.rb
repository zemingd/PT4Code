m = gets.chomp.split("").map(&:to_i)
m.each do |i|
    if i == 1
        print 9
    else
        print 1
    end
end