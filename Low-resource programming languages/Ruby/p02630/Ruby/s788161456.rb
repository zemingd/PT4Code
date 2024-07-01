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
q_lines = []
for num in 0..Q-1 do
    line = gets
    q_lines << line.chomp.split(' ').map(&:to_i)
end

for num in 0..Q-1 do
    B = q_lines[num][0].to_i
    C = q_lines[num][1].to_i
    b = A[B].to_i
    A[B] = 0
    sum += b * (C - B) 
    A[C] ||= 0
    A[C] += b
    puts sum
end