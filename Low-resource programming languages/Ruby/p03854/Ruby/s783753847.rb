S = gets.chomp.reverse
index = 0
loop{
    if S.size <= index
        puts "YES"
        break
    end
    if S[index, 5] == "maerd"
        index += 5
    elsif S[index, 7] == "remaerd"
        index += 7
    elsif S[index, 5] == "esare"
        index += 5
    elsif S[index, 6] == "resare"
        index += 6
    else
        puts "NO"
        break
    end
}
