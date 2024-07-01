n = gets.chomp.to_i
a = gets.chomp.split
    n.times do |i|
        print a[(n - 1) - i]
        print ""
    end
    puts ""