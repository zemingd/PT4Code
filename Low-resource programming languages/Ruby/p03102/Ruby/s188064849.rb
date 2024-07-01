N, M, C = gets.chomp!.split(" ").map(&:to_i)
B_m = gets.chomp!.split(" ").map(&:to_i)

count = 0
N.times do |i|
    a_m = gets.chomp!.split(" ").map(&:to_i)
    sum = 0
    a_m.zip(B_m).each do |a, b|
        sum += a * b
    end

    if sum + C > 0
        count+=1
    end
end

puts count
