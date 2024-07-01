cnt = 0
H,W=gets.split(' ').map &:to_i
check = Array.new(H) {Array.new(W, false)}
mat = []
black = []
init = []
H.times do |i|
    ws = gets.chomp.split('')
    ws.each_with_index do |w, j|
        if w == '#'
            init << [i,j]
            check[i][j] = true
        end
    end
    mat<<ws
end
black << init
#puts "init check #{check}"
#puts "init black #{black}"
#puts "init mat #{mat}"

while !black.empty? do
    a=black.shift
    tmp = []
    a.each do |i,j|
        if i-1 >= 0 && !check[i-1][j]
            check[i-1][j]=true; tmp<<[i-1,j]
        end
        if i+1 <= H-1 && !check[i+1][j]
            check[i+1][j]=true; tmp<<[i+1,j]
        end
        if j-1 >= 0 && !check[i][j-1]
            check[i][j-1]=true; tmp<<[i,j-1]
        end
        if j+1 <= W-1 && !check[i][j+1]
            check[i][j+1]=true; tmp<<[i,j+1]
        end
    end
    if !tmp.empty?
        black << tmp
        cnt += 1
    end
    #puts "-----check #{check}"
    #puts "black #{black}"
    #puts "cnt #{cnt}"
end
puts cnt