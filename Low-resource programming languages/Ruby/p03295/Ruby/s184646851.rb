n, m = gets.split.map(&:to_i)
stack = m.times.map{ a,b = gets.split.map(&:to_i)
    [0]*(a-1) + [1]*(b-a) + [0]*(n-b)}
num = 0
while true
    num += 1
    st = (n-1).times.map{ |i|
    sum = 0
    m.times { |j| sum += stack[j][i] }
    sum}
    destroy = st.index(st.max)
    s = []
    m.times { |i| s << stack[i] if stack[i][destroy]==0 }
    stack = s
    if stack.length == 0
        break
    else
        m = stack.length
    end
end
puts num

