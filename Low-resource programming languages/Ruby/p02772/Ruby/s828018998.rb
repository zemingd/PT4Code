n = gets.to_i
A = gets.split.map(&:to_i)

A.each do |a|
    
    if a.even?
        next if a % 3 == 0 or a % 5 == 0
        puts "DINIED"
        exit
    end
end

puts "APPROVED"