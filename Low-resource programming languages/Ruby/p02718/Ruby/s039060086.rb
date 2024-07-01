N, M = gets.split.map{|i|i.to_i}
A = gets.split.map{|i|i.to_i}
A.sort_by!{|i|-i}
if A[M - 1] < A.inject(:+) / (4 * M)
    puts "No"
else
    puts "Yes"
end
