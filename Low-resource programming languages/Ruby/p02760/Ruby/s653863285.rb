A = Array.new(3)
B = Array.new(3){Array.new(3, 0)}

3.times do |i|
    A[i] = gets.chomp.split(" ")
end

N = gets.to_i

N.times do |n|
    A.each_with_index do |a, i|
        a.each_with_index do |b, j| 
            if b[j] == gets
               B[i][j] = 1
            end
        end
    end
end

puts A
puts B

if B[0] == [1, 1, 1] || B[1] == [1, 1, 1] ||B[2] == [1, 1, 1]
    puts "Yes"
elsif 
    B = B.transpose
    if B[0] == [1, 1, 1] || B[1] == [1, 1, 1] ||B[2] == [1, 1, 1]
        puts "Yes"
    end
elsif (B[0][0] == 1 && B[1][1] == 1 && B[2][2] == 1) || (B[0][2] == 1 && B[1][1] == 1 && B[2][0] == 1)
    puts "Yes"
else
    puts "No"
end