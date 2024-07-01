N = gets.to_i
S = gets.chomp.split('')

blacks = 0
whites = 0

S.each do |e|
    if e == '.'
        whites += 1
    else
        blacks += 1
    end
end
if blacks == 1 && S[-1] == '#'
    puts 0
    exit
end
if whites < blacks
    puts whites
else
    puts blacks
end