n, y = gets.split(' ').map(&:to_i)

(0..n).each do |i|
        nj = n - i
        (0..nj).each do |j|
                k = n - i - j
                if i * 10000 + j * 5000 + k * 1000 == y
                        puts "#{i} #{j} #{k}"
                        exit
                end
        end
end

puts '-1 -1 -1'