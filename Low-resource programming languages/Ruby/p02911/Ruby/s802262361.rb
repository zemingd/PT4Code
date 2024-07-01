str = gets.split
N,K,Q = str[0].to_i, str[1].to_i, str[2].to_i
need = 1-(K-Q)
a = Array.new(N+1,0)

for i in 0...Q do
    b = gets.chomp.to_i
    a[b] += 1
end

for i in 1..N do
    if a[i] >= need
        puts "Yes"
    else
        puts "No"
    end
end