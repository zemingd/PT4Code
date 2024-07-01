n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)

array = array.select{|e| e % 2 == 0}

array.size.times do |i|
    if array[i]%3 != 0 && array[i]%5 != 0
        puts "DENIED"
        break
    elsif i == array.size-1
        puts "APPROVED"
    end
end
