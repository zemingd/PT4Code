s = gets.chomp.chars
cnt = 0
s.each do |x|
    if x == "R"
        cnt += 1
    end
    if x == "S" && cnt == 1
        puts cnt
        return
    end
end
puts cnt