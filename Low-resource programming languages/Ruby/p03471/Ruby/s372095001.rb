n,y = gets.strip.split.map(&:to_i)
y /=1000

(0..n).each do |i|
    (0..n-i).each do |j|
        k = n-i-j
        if  10*i + 5*j + k == y
            puts "#{i} #{j} #{k}"
            exit
        end
    end
end
puts '-1 -1 -1'