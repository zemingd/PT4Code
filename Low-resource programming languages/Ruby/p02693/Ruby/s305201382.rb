# Your code here!
k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)

if k > b
    puts "NG"
elsif k >= a && K <= b
    puts "OK"
elsif b - a >= k
    puts "OK"
elsif a == b
     if a % k == 0
         puts "OK"
    else
        puts "NG"
    end

else
    puts "NG"
end