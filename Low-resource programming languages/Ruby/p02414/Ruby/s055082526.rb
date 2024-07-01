n,m,l  = gets.chomp.split(" ").map{|item| item.to_i}
a = Array.new(n).map{ Array.new(m,0) }
b = Array.new(m).map{ Array.new(l,0) }

n.times do |i|
    a[i] = gets.chomp.split(" ").map{|item| item.to_i}
end

m.times do |k|
    b[k] = gets.chomp.split(" ").map{|item| item.to_i}
end

c = Array.new(n).map{ Array.new(l,0) }
n.times do |i|
    l.times do |j|
        m.times do |k|
            c[i][j]+=a[i][k]*b[k][j]
        end
        
        if j!=0
            print(" ")
        end
        print(c[i][j])
    end
    puts
end