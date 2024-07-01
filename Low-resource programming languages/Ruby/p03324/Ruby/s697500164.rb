# Ringo's Favorite Numbers
D,N = gets.chomp.split(" ").map(&:to_i)
n = 100
if D == 0
    puts N
else 
    for i in 1..D-1 do
        n = n * n
    end
    puts (n * N)
end