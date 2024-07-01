n = gets.chomp.to_i
1.upto(n){|i|
    if i % 3 == 0 || i.to_s.include?("3")
        print " " + i.to_s
    end
}
puts