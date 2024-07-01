n = gets.chomp.to_i
s = gets.chomp.split("")
a = []
b = s
ans = 0
(n-1).times do 
    hash_a = Hash.new(0)
    hash_b = Hash.new(0)
    a << b.shift
    a.each do |i|
        hash_a[i] += 1
    end
    b.each do |i|
        hash_b[i] += 1
    end
    max = [hash_b.size,hash_a.size].max
    min = [hash_b.size,hash_a.size].min
    if max == hash_b.size
        big = hash_b
        small = hash_a
    elsif max == hash_a
        big = hash_a
        small = hash_b
    end
    if big == nil || small == nil
        break
    end
    #  p big
    #  p small
    count = 0
    small.each do |i|
        # p big[i[0]]
        if big.include?(i[0]) 
            count += 1
           # [i[1],big[i[0]]].min
        end
    end
    ans = [ans,count].max
end
puts ans