N = gets.to_i
A = gets.split.map(&:to_i).sort

dup = []
1.upto(N-1) do |i|
    if A[i] == A[i-1]
        A[i-1] = -1
        dup.push A[i]
    end
end
A.delete(-1)


(A.size-1).downto(1) do |i|
    i.times do |j|
        if A[i] % A[j] == 0
            A[i] = -1
            break
        end
        if A[j] * 2 > A[i]
            break
        end
    end
end

# p A

dup.each do |d|
    A.delete d
end
puts A.select{|a| a != -1}.size