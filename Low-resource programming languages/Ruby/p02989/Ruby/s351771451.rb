N = gets.to_i
d = Array.new(N-1)
d = gets.split(" ").map(&:to_i);
c_k = 0
for k in 1..10*5
    d_abc = d.select { |x| x < k }
    if d_abc.count == N/2
        c_k += 1
    end
end
puts c_k