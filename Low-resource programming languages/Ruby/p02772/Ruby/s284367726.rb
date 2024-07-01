N = gets.to_i
arr = gets.chomp.split.map(&:to_i)

arr.each do |a|
    if a % 2 == 0
        if a % 3 != 0 && a % 5 != 0
            puts "DENIED"
            return
        end
    end
end

puts "APPROVED"



