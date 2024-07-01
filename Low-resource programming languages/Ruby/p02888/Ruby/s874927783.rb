N = gets.to_i
L = gets.chomp.split(" ").map(&:to_i).sort.reverse
count = 0

(N - 2).times do |i|
    ((i + 1)...(N - 1)).each do |j|
         ((j + 1)...N).each do |k|
            next if L[k] < L[i] - L[j]
            if L[i] < L[k] + L[j] 
                count += 1
            end
        end
    end
end

puts count
