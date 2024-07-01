N = gets.to_i
A = N.times.map{gets.to_i-1}

count = 0

N.times do |i|
    if i == 1
        puts i
        exit(0)
    end
    i = A[i]
end

puts -1