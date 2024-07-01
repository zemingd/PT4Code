n,m,l=gets.chomp.split(" ").map(&:to_i)
a_matrix = []
n.times do
    arr = gets.chomp.split(" ").map(&:to_i)
    a_matrix.push(arr)
end
b_matrix = []
m.times do
    arr = gets.chomp.split(" ").map(&:to_i)
    b_matrix.push(arr)
end
(0..(n-1)).each do |i|
    first = true
    (0..(l-1)).each do |j|
        if first
            first = false
        else
            print " "
        end
        c = (0..(m-1)).map {|k| a_matrix[i][k]*b_matrix[k][j] }.inject(:+)
        print c
    end
    puts
end
