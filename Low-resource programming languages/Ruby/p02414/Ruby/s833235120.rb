def dot(matrix1:[],matrix2:[])
    answer = Array.new(matrix1.size).map{Array.new(matrix2[0].size,0)}
    matrix1.size.times do |i|
        matrix2[0].size.times do |j|
            matrix2.size.times do |k|
                answer[i][j] += matrix1[i][k]*matrix2[k][j]
            end
        end
    end
    return answer
end

n,m,l = *gets.split.map(&:to_i)
matrix1 = []
matrix2 = []
n.times do
    matrix1.push(gets.split.map(&:to_i))
end
m.times do
    matrix2.push(gets.split.map(&:to_i))
end
answer = dot(matrix1:matrix1,matrix2:matrix2)
answer.each do |array|
    puts array.join(" ")
end
