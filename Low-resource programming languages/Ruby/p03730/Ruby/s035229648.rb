A, B, C = gets.split.map &:to_i
1.upto(B).each do |i|
    n = i * A
    if n % B == C
        puts 'YES'
        exit
    end
end
puts 'NO'