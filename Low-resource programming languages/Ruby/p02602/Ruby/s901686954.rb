N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

(N - K).times do |i|
    if A[K+i] > A[i]
        puts 'Yes'
    else
        puts 'No'
    end
end