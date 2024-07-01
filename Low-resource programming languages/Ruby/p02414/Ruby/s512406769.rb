n,m,l = gets.split(" ").map(&:to_i)
a_nm = Array.new(n).map{Array.new(m,0)}
b_ml = Array.new(m).map{Array.new(l,0)}
c_nl =Array.new(n).map{Array.new(l,0)}

for i in 0..n-1
   a_nm[i] = gets.split(" ").map(&:to_i)
end

for i in 0..m-1
   b_ml[i] = gets.split(" ").map(&:to_i)
end
for i in 0..n-1
    for j in 0..l-1
        #n????????????????¨????
        for k in 0..m-1
            c_nl[i][j] += a_nm[i][k] * b_ml[k][j]
        end
    end
end
c_nl.each{|x|
   puts  x.join(" ")
}