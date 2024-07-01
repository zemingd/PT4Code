a, b = gets.chomp.split(" ").map(&:to_i)
ans = a * b
(1..3).each do |i|
    ans = ans * i
    if ans % 2 != 0
        puts "Yes"
        exit
    end
end
puts "No"