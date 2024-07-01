N = gets.to_i
a = gets.chomp.split.map(&:to_i)

p a.inject(0){|sum, i|
    while i.even? do
        sum += 1
        i /= 2
    end
    
    sum
}