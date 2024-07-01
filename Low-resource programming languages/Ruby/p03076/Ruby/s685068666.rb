arr = []
ar = [0]
5.times do 
    i = gets.chomp.to_i
    iti = i % 10
    moku = 0
    if iti != 0
    moku = 10 - iti
    ar << moku
    end
    arr << i + moku
end
ar = ar.sort
puts arr.inject(:+) - ar.pop
