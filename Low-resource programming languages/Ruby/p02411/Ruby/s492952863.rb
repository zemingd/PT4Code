inputs = []
loop do
    input = gets.split(" ")
    if input[0] == "-1" && input[1] == "-1" && input[2] == "-1"
        break
    end
    inputs << input
end

inputs.each do |input|
    m, f, r = input[0].to_i, input[1].to_i, input[2].to_i

    if m == -1 || f == -1
        puts "F"
    elsif m + f >= 80
        puts "A"
    elsif m + f >= 65
        puts "B"
    elsif m + f >= 50 || (m + f >= 30 && r >= 50)
        puts "C"
    elsif m + f >= 30
        puts "D"
    else
        puts "F"
    end
end
