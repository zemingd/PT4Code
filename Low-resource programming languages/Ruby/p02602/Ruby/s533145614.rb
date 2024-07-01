N,K=gets.chomp.split(" ").map(&:to_i)
array=gets.chomp.split(" ").map(&:to_i)
(0..(N-K-1)).each do |i|
    if array[i] < array[i+K]
        puts "Yes"
    else
        puts "No"
    end
end
