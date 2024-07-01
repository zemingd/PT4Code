h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
(h+2).times do |i|
    if i == 0 || i == h+1
        s = []
        w.times do |i|
            s << "."
        end 
    else
        s = gets.chomp.split("")
    end
    s << "."
     s.unshift(".")
     arr << s
end
kazu = Array.new(h+1).map{Array.new(w+1,0)}
i = 1
j = 1
ar = []
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
    if j >= 1 && j <= w-1
        j += 1
    elsif j == h && i == w
        break
    elsif j == w
        j = 1
        i += 1
    end
end
ar.each do |i|
    if i == 0
        puts "No"
        exit
    end
end
puts "Yes"

