n,k=gets.split.map(&:to_i)
v=gets.split.map(&:to_i)
i = k
vv = []
while i >= 0
    vv << i
    i -= 2 
end
vv.map!.with_index {|m,i| [m,k-i]}
x = vv.map { |e|(e[1]+1).times.map{|m| v.rotate(-m)[0..e[1]-1].max(e[0]).inject(:+).to_i }.max }.max
p x > 0 ? x : 0