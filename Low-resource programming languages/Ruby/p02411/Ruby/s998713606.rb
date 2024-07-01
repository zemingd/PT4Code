while true do
    m, f, r = gets.split.map { |e| e.to_i }
    break if m == -1 && f == -1 && r == -1
    if m == -1 || f == -1 then
        puts "F"
    elsif m + f >= 80 then
        puts "A"
    elsif m + f >= 65 && m + f < 80 then
        puts "B"
    elsif m + f >= 50 && m + f < 65 then
        puts "C"
    elsif m + f >= 30 && m + f < 50 then
        if r >= 50 then
            puts "C"
        else 
            puts "D"
        end
    elsif m + f < 30 then
        puts "F"
    end
end