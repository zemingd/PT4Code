n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
str = ""
arr.each do |i|
    for j in 1..arr.length
        if i == arr[j]
            str = "NO"
            break
        end
        str = "YES"
    end
end
puts str