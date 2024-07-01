a, b = gets.chomp.split(" ").map(&:to_s)
n = (a+b).to_i
2.upto(100) do |i|
    if i ** 2 == n
        puts "Yes"
        exit
    end
end
puts "No"