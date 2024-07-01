input = []
spell = []
3.times do |i|
    input[i] = gets.chomp
    spell[i] = input[i].split("")
    print spell[i][i]
end
