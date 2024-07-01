a, b = gets.chomp.split(" ")
(1..100).each do |i|
    ans = (i ** 2).to_s
    if ans == a+b
        puts "Yes"
        exit
    end
end
puts "No"