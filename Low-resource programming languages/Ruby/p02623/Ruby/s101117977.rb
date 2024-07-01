N, M, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i) 
B = gets.split.map(&:to_i)
a_idx = 0
b_idx = 0
sum = 0
cnt = 0
400000.times do
    if a_idx < N && (b_idx >= M || A[a_idx] <= B[b_idx])
        sum += A[a_idx]
        a_idx += 1
    elsif b_idx < M && (a_idx >= N || A[a_idx] > B[b_idx])
        sum += B[b_idx]
        b_idx += 1
    else
        break
    end
    if sum <= K
        cnt += 1
    else
        break
    end
end
puts cnt