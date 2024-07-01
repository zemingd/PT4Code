n = gets.chomp.to_i
s = gets.chomp.split('') 

alpha = [*('A'..'Z')]
l = alpha.length
s.each do |t|
    next_i = alpha.index(t) + n
    if next_i >= 26
        print alpha[next_i - 26]
    else
        print alpha[next_i]
    end
end
