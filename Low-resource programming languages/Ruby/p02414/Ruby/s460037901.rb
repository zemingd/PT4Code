n,m,l = gets.split(" ").map{|x| x.to_i}
l_mat =Array.new()
r_mat=Array.new()
n.times do |i|
    l_mat[i]=gets.split(" ").map{|x| x.to_i}
end
m.times do |i|
    r_mat[i]=gets.split(" ").map{|x| x.to_i}
end
ans_mat=Array.new()
n.times do |i|
    ans_mat[i]=Array.new(l)
    l.times do |j|
        ans_mat[i][j]=0
        m.times do |k|
            ans_mat[i][j]+=l_mat[i][k]*r_mat[k][j]
        end
    end
end
n.times do|i|
    l.times do |j|
        print(ans_mat[i][j]," ")
    end
    puts()
end