N = gets.to_i
A = N.times.map{gets.to_i-1}

count = 0

N.times do |i|
    if count == 1
        puts i
        exit(0)
    end
    count = A[count]
end

puts -1