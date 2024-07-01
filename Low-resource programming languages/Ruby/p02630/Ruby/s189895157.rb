N = gets.to_i
A = gets.split.map(&:to_i)
Q = gets.to_i
Q.times do 
    b, c = gets.split.map(&:to_i)
    unless A.include?(b)
        puts A.sum
        next
    else
        A.each_with_index do |x, idx|
            first = A.index(b) || A.length
            last = A.rindex(b) || 0
            unless idx.between?(first, last)
                next
            end
            if x == b
                A[idx] = c
            end
        end
        puts A.sum
    end
end
