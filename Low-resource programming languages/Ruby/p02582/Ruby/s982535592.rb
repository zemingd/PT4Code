chars = gets.chars
cnt = 0
results = []
chars.each do |c|
    if c == "R"
        cnt += 1
    else
        results << cnt
        cnt = 0
    end
end
results << cnt
puts results.max