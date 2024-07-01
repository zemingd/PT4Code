N = gets.to_i
L = gets.chomp.split(" ").map(&:to_i).sort.reverse
count = 0

(N - 2).times do |i|
    j = i + 1
    k = N - 1
    while j < k do 
        if L[i] < L[j] + L[k]
            count += k - j
            j += 1
        else
            k -= 1
        end
    end
end

puts count