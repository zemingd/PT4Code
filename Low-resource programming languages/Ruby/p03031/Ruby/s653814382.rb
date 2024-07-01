N,M=gets.split.map(&:to_i)
K=M.times.map {
    t = gets.split.map{|x|x.to_i-1}
    t.shift
    t
}
P=gets.split.map(&:to_i)

=begin
N,M=10, 10
k=[]
M.times do |i|
    a=N.times.map{rand(0..N-1)}
    k<<a
end
K=k
P=N.times.map{0}
=end

cnt=0
(2**N).times do |i|
    flag=true
    M.times do |j|
        switch=0
        K[j].each do |n|
            switch += i>>n & 1
        end
        if switch % 2 != P[j]
            flag=false
            break
        end
    end
    cnt +=1 if flag
end
p cnt
