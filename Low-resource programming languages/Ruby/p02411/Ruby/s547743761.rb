loop do
    m, f, r = gets.chomp.split.map(&:to_i)
    score = ""
    if [m, f, r].all?(-1)
        break
    elsif [m, f].any?(-1)
        score = "F"
    elsif 80 <= m + f
        score = "A"
    elsif 65 <= m + f
        score = "B"
    elsif 50 <= m + f || 50 <= m
        score = "C"
    elsif 30 <= m + f
        score = "D"
    else
        score = "F"
    end
    puts score
end
