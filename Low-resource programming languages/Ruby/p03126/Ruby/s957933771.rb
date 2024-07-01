N,M = gets.chomp.split(" ").map(&:to_i);

K = Array.new(M,0)
H = Array.new(N,0)
count = 0

N.times do |i|
    H[i] = gets.chomp.split(" ").map(&:to_i);
    H[i][0].times do |j|
        K[H[i][j+1]-1] += 1
        if K[H[i][j+1]-1] == N then
            count += 1
        end
    end
end

print "#{count}\n"
