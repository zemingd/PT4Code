N = gets.to_i
A = []
sum = 0
line = gets.split(' ').map(&:to_i)

for num in 0..N-1 do
    n = line[num]
    A[n] ||= 0
    A[n] += 1
    sum += n
end

Q = gets.to_i
q_line = []

for num in 0..Q-1 do
    q_line = gets.chomp.split(' ').map(&:to_i)
    B = q_line[0]
    C = q_line[1]
    b = A[B].to_i
    A[B] = 0
    sum += b * (C - B) 
    A[C] ||= 0
    A[C] += b
    puts sum
end