h, w = gets.chomp.split(" ").map(&:to_i)
s = []
flag = Array.new(h).map{Array.new(w, false)}

h.times do
    s << gets.chomp.split("")
end

s.each_with_index do |line, i|
    isContinuous = false
    line.each_with_index do |color, j|
        if color == "." then
            flag[i][j] = true
            isContinuous = false
        else
            if isContinuous then
                flag[i][j-1] = true
                flag[i][j] = true
            end
            isContinuous = true
        end
    end
end

s = s.transpose
flag = flag.transpose

s.each_with_index do |line, i|
    isContinuous = false
    line.each_with_index do |color, j|
        if color == "." then
            flag[i][j] = true
            isContinuous = false
        else
            if isContinuous then
                flag[i][j-1] = true
                flag[i][j] = true
            end
            isContinuous = true
        end
    end
end

ans = true

flag.each do |line|
    if line.include?(false) then
        ans = false
        break
    end
end

puts ans ? "Yes" : "No"