N, M, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i) 
B = gets.split.map(&:to_i)
a_idx = 0
b_idx = 0
sum = 0
cnt = 0
while a_idx < N || b_idx < M
    if a_idx >= N && b_idx >= M
        break
    elsif a_idx >= N
        sum += B[b_idx]
        b_idx += 1
    elsif b_idx >= M
        sum += A[a_idx]
        a_idx += 1
    elsif A[a_idx] <= B[b_idx]
        sum += A[a_idx]
        a_idx += 1
    elsif
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