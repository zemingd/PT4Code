A,B,X = gets.split.map(&:to_i)
if X < A then
    puts "NO"
else
    if X-A <= B then
        puts "YES"
    else
        puts "NO"
    end
end