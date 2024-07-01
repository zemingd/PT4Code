h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
(h+2).times do |i|
    if i == 0 || i == h+1
        s = []
        j = 0
        until j == w
            s << "."
            j += 1
        end 
    else
        s = gets.chomp.split("")
    end
    s << "."
     s.unshift(".")
     arr << s
end
i = 1
j = 1
ar = []
# p arr
# p arr[1]
while true
    count = 0
    if arr[i][j] == "#"
        if arr[i][j-1] == "#"
            count += 1
        end
        if arr[i][j+1] == "#"
            count += 1
        end
        if arr[i-1][j] == "#"
            count += 1
        end
        if arr[i+1][j] == "#"
            count += 1
        end
        ar << count
    end
    if j <= w-1
        j += 1
    elsif j == h && i == w
        break
    elsif j == w
        j = 1
        i += 1
    end
end
if ar != []
ar.each do |i|
    if i == 0
        puts "No"
        exit
    end
end
elsif ar == []
    puts "No"
    exit
end
puts "Yes"
