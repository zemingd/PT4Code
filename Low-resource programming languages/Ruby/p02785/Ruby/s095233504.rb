h, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
array = array.sort!.reverse!

if array.size <= k
    puts 0
else
    k.times do 
        array.delete_at(0)
    end

    puts array.inject(:+)
end
