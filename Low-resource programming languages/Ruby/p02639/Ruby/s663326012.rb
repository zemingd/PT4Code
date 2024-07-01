i = 0
N = gets.chomp.split.map(&:to_i)

while i < 5
    if N[i] == 0
        i = i + 1
        puts i
        break
    end
    i = i + 1
end
