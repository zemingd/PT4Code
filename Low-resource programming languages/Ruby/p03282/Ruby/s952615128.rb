S = gets.chomp.chars.map(&:to_i)
K = gets.to_i

S.inject(0){|size, i|
    size += i.to_i*5*10**15
    
    if size >= K then
        puts i
        break
    end
    
    size
}