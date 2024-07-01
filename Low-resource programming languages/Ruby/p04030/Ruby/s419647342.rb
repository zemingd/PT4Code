line = ""
str = gets.chomp
str.each_char{|c|
    case c
    when "B" then line = line[0..-2] if line != ""
    else line += c
    end
}
puts line
