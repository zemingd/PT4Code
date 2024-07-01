class Array
    def all_add!(point,x,task)
        self[point][1] = x = (x + task[point])
        
        self[point][0].map{|i| self.all_add!(i,x,task)} if !self[point][0].empty?
        
        self
    end
end

N,Q = gets.split.map(&:to_i)
ab = (N-1).times.map{gets.split.map(&:to_i)}
px = Q.times.map{gets.split.map(&:to_i)}

tree = Array.new(N+1).map{Array.new().push(Array.new()).push(0)}
task = Array.new(N+1,0)

(N-1).times{
    a = ab.pop
    tree[a[0]][0].push a[1]
}

px.map{|x|
    task[x[0]] += x[1]
}

tree.all_add!(1,0,task)

puts tree.transpose.pop[1..N].join(" ")