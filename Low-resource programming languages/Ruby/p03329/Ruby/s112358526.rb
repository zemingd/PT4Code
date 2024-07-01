n = gets.to_i
ans = 10000000

for i in 0..n/9
    ret = 0
    m = 9*i
    7.downto(1) do |j|
        ret += m/(9**j)
        m %= 9**j
    end
    l = n-9*i
    7.downto(0) do |j|
        ret += l/(6**j)
        l %= 6**j
    end
    ans = [ans,ret].min
end
puts ans