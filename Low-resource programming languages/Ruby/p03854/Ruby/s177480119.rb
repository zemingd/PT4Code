s = gets.chomp.reverse
choice = ["dream", "dreamer", "erase", "eraser"].map(&:reverse)
while !s.empty?
    flag = false
    choice.each do |i|
        len = i.size
        if s[0, len] == i
            s = s[len, s.size]
            flag = true
        end
    end
    if !flag
        puts "NO"
        exit
    end
end

puts "YES"