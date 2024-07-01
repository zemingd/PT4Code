N = gets.to_i
A = gets.split.map(&:to_i)
min = A.min
index = 1
loop do
    if A.count{|a| a%min!=0} == 0 then
        puts min
        break
    else
        n_min = min
        N.times do |i|
            next if A[i] == 0 || A[i] == min
            A[i] = A[i]%min
            n_min = A[i] if A[i] < n_min && A[i] > 0
        end
        min = n_min
    end
    index += 1
    break if index >= 100
end