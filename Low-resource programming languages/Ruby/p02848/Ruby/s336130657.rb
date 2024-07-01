alp = ('A'..'Z').to_a
Alp = {}
alp.each_with_index do |x, i|
    Alp[i] = x
end

newStrings = []
N = gets.to_i
S = gets.chomp.split('')
S.each do |x|
    i = Alp.key(x)+N
    i -= 26 if i >= 26
    newStrings << Alp[i]
end

puts newStrings.join