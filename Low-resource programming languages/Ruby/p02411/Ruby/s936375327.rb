loop do
    m, f, r = gets.split.map(&:to_i)
    break if m == -1 && f == -1 && r == -1
    
    if m == -1 || f == -1
        puts "F"
        next
    end
    
    sum = m + f
    grade = case sum
    when 80..100
        "A"
    when 65..80
        "B"
    when 50..65
        "C"
    when 30..50
        r >= 50 ? "C" : "D"
    else
        "F"
    end
    puts grade
end