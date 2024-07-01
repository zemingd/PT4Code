n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)
ans = 0

(n-2).times do |i|
    if array[i] < array[i+1] && array[i+1] < array[i+2]
        ans += 1
    elsif array[i+2] < array[i+1] && array[i+1] < array[i] 
        ans += 1
    end
end

puts ans
