N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
sum = 0
N.times do |i|
    if B[i] <= A[i] then
        sum += B[i]
        A[i] -= B[i]
    else
        sum += A[i]
        rest = B[i] - A[i]
        A[i] = 0
        if rest <= A[i+1] then
            sum += rest
            A[i+1] -= rest
        else
            sum += A[i+1]
            A[i+1] = 0
        end
    end
end
puts sum