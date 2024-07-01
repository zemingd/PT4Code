s=gets.chomp.split("").map(&:to_i)
s.each do |i|
    if i != 1
        puts i
        exit
    end
end
puts 1