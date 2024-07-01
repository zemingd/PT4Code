N = gets.to_i
A = Array.new(100001, 0)
sum = 0
line = gets.split(' ').map(&:to_i)

line.each do |num|
    A[num] += 1
    sum += num
end

Q = gets.to_i
q_line = []

Q.times do
    q_line = gets.chomp.split(' ').map(&:to_i)
    B = q_line[0]
    C = q_line[1]
    b = A[B].to_i
    A[B] = 0
    sum += b * (C - B)
    A[C] += b
    puts sum
end
