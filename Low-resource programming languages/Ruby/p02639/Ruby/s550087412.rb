X = gets.split.map(&:to_i)
(1..5).each do |i|
    puts i if X[i - 1] == 0
end
