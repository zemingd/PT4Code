n = gets.to_i
a = gets.chomp.split
n.times do |i|
    if i == n - i
        print a[(n - 1) - i]
    else
        print a[(n - 1) - i] + " "
    end
end
puts ""