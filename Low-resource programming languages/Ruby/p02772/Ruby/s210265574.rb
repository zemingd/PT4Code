# n = gets.to_i
# array = []
# n.times do
#   array << gets.chomp.to_s
# end

# n
# puts "---"
# puts array.group_by(&:itself).map{|_, v| v.size}

n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)
array = array.select{|e| e % 2 == 0}

if array.size == 0
    puts "APPROVED"
end

array.size.times do |i|
    if array[i]%3 != 0 && array[i]%5 != 0
        puts "DENIED"
        break
    end

    if i == array.size-1
        puts "APPROVED"
    end
end
