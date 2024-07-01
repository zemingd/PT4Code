N = gets.to_i
A = gets.split.map(&:to_i)
A_hash = Hash.new(0)
A.map do |a|
    A_hash[a] += 1
end
Q = gets.to_i
Q.times do 
    b, c = gets.split.map(&:to_i)
    # A_hash[b] = 
    if A_hash[b].positive?
        A_hash[c] = A_hash.delete b
    end
    sum = 0
    A_hash.map do |key, value|
        sum += key * value
    end
    puts sum
    # A.map!{|x| x==b ? c : x}
    # puts A.sum
end
