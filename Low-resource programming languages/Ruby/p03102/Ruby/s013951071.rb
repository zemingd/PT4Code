N , M , C = gets.split.map{|a| a.to_i}
B = gets.split.map{|a| a.to_i}
arr = Array.new(M)
count = 0

N.times do |i|

    arr = gets.split.map{|a| a.to_i}
    k = 0

    M.times do |j|
        k += arr[j] * B[j]
    end

    if k + C > 0
        count += 1
    end
end

puts count