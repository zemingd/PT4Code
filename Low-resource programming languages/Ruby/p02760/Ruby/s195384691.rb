A = 3.times.map{gets.split.map(&:to_i)}
N = gets.to_i
B = N.times.map{gets.to_i}

ans = 0
min = -Float::INFINITY
max = Float::INFINITY
sum = 0

A.each_with_index do |a,i|
    a.each_with_index do |n,j|
        A[i][j] = 101 if B.include?(n)
    end
end

A.each do |a|
    if a.sum == 303
        puts "Yes"
        exit
    end
end

3.times do |i|
    if A[0][i] +   A[1][i] +   A[2][i] == 303
        puts "Yes"
        exit
    end
end

if A[0][0] + A[1][1] + A[2][2] == 303
    puts "Yes"
    exit
end

if A[0][2] + A[1][1] + A[2][0] == 303
    puts "Yes"
    exit
end

puts "No"