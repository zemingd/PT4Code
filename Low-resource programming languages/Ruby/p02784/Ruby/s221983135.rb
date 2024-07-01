H,N = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i)

if H <= A.sum() then
    puts "Yes"
else
    puts "No"
end
