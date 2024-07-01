A, B, X = gets.split.map(&:to_i)

0.upto(B) do |i|
        if i + A == X
                puts 'YES'
                exit
        end
end     

puts 'NO'
