a = gets.chomp.split(" ").map(&:to_i)
(0...5).each do |i|
    if a[i] == 0
        puts i + 1
    end
end
