N = gets.chomp.to_i
A = gets.chomp.split(" ").map!(&:to_i)

B = []
N.times { |i|
    sum = 0
    N.times { |j|
        if (j+1) % (i+1) == 0
            sum += A[j]
        end
    }
    B.push(sum) if sum != 0
}

puts B.count
puts B if B.count > 0