A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

counts = 0

(A+1).times do |fiveHandredCounts|
    (B+1).times do |oneHandredCounts|
        (C+1).times do |fiftyCounts|
            coinSum = 500*fiveHandredCounts + 100*oneHandredCounts + 50*fiftyCounts
            if coinSum == X
                counts += 1
            end
        end
    end
end

puts counts