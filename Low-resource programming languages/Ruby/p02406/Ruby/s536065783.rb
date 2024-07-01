n = gets.chomp.to_i
1.upto n do |i|
    if i%3 == 0
        print " #{i}"
    elsif i.to_s.include?('3')
        print " #{i}"
    end
end
puts