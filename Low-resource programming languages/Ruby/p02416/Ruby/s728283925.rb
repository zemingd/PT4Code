loop do
    input = gets.chomp.split("").map do |i| i.to_i end
    if input.inject(:+) == 0
        break
    else
        puts input.inject(:+)
    end
end