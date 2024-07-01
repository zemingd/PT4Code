S = gets.chomp.split('')
T = gets.chomp.split('')
count = 0
(0..2).each do |n|
    if S[n] == T[n]  
        count = count +1
    end
end
puts count

