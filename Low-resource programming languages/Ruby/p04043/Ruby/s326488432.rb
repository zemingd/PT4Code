A = gets.chomp.split(" ").map(&:to_i)
five = 0
seven = 0
for i in 0..A.length-1 do
    if A[i] == 5
        five = five + 1
    elsif A[i] == 7
        seven = seven + 1
    end
end
if five == 2 && seven == 1
    puts "YES"
else
    puts "NO"
end