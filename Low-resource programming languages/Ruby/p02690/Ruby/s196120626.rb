X = gets.to_i

(-200..200).each do |a|
    (-200..200).each do |b|
        if a**5 - b**5 == X then
            puts "#{a} #{b}"
            exit
        end
    end
end