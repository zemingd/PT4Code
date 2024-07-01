s = gets.chomp.split("")
count = 0
arr = []
s.each do |i|
    if i == "R"
        count += 1
        arr << count
    else
        count = 0
        arr << count
    end
end
puts arr.sort.pop