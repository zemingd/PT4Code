x=gets.to_i

(-100..100).each do |a|
    #p a**5
    b=(a**5-x)**0.2
    #p b
    if !b.is_a?(Complex)
        if b==b.ceil
            puts "#{a} #{b.abs.to_i}"
            break
        end
    end

    if b.abs == b.abs.ceil
        bb = b.abs.ceil
        if a**5-b**5==x
            puts "#{a} #{-b.abs.to_i}"
            break
        end
    end
end