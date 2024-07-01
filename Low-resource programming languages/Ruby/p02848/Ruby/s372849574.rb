n = gets.to_i
alphabet = [*"A".."Z"]
str = gets.chomp.split("")

str.each {|char|
    print alphabet[(alphabet.index(char) + n) % 26]
}