N,M,C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = N.times.map{gets.split.map(&:to_i)}
count = 0
A.each_with_index do |a, j|
    sum = 0
    a.each_with_index do |v, k|
        tmp = 0
        tmp = B[k] * v
        sum += tmp
    end
    if sum - C > 0
        count += 1
    end
end
puts count
