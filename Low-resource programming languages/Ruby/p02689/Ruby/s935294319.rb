N, M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
H.unshift :padding
G = Array.new(N, 1)
G.unshift 0
M.times do 
    a, b = gets.split.map(&:to_i)
    G[a] = 0 if H[a] <= H[b]
    G[b] = 0 if H[b] <= H[a] 
end
puts G.sum