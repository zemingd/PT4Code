# Foods Loved by Everyone
N,M = gets.chomp.split(" ").map(&:to_i)
K = []
array = []
ans = 0
for i in 0..N-1 do
    K[i] = gets.chomp.split(" ").map(&:to_i)
end
for i in 0..N-1 do
    for j in 1..K[i].length-1 do 
        array.push(K[i][j]) 
    end 
end
for i in 1..M do
    if array.count(i) == N
        ans = ans + 1
    end
end
puts ans