s = gets.chomp.reverse
strSize = s.size
choice = ["dream", "dreamer", "erase", "eraser"].map(&:reverse)
while !s.empty?
    flag = false
    choice.each do |i|
        len = i.size
        if s[0, len] == i
            s = s[len, s.size-1]
            flag = true
        end
    end
    if !flag
        puts "No"
        exit
    end
end

puts "Yes"