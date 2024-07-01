h, w = gets.split.map(&:to_i)

picture = ["."*(w+2)]
h.times{
    row = "." + gets.chomp + "."
    picture << row
}
picture << "."*(w+2)

for i in 1..h
    for j in 1..w
        if picture[i][j] == "#"
            break if picture[i][j+1] == "#"
            break if picture[i+1][j] == "#"
            break if picture[i][j-1] == "#"
            break if picture[i-1][j] == "#"
            puts "No"
            exit
        end
    end
end

puts "Yes"