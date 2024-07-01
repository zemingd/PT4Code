S = gets.chomp.to_i
A = gets.chomp.split().map(&:to_i)
high=0
res = 0
S.times do |n|
    if A[n] >= high then
        res += 1
        high = A[n]
    end
end
puts res