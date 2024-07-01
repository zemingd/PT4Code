x=gets.to_i

(-35..35).each do |a|
    #p a
    b=(a**5-x)**0.2
    #p b.abs
    
    if b.abs == b.abs.ceil
        bb = b.abs.ceil
        if a**5-b**5==x
            puts "#{a} #{-b.abs.to_i}"
            break
        end
    end
end