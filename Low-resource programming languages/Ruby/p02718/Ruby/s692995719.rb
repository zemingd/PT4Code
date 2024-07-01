N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

sortedA = A.sort.reverse

if sortedA[M - 1] < (A.inject(:+))/(4.0 * M) then
    puts "No"
else
    puts "Yes"
end
