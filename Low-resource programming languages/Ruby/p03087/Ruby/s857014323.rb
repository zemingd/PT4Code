N, Q = gets.split(" ").map(&:to_i)
S= gets.chomp
Q.times do 
    l, r = gets.split(" ").map(&:to_i)
    puts S.slice((l - 1)..(r - 1)).scan("AC").length
end