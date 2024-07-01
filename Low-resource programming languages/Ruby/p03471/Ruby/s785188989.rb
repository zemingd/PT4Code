n, y = gets.chomp.split(" ").map(&:to_i)
# 難しい
a = y / 10000
b = y / 5000
c = y / 1000
(0..a).each do |i|
    (0..c).each do |e|
        k = n - ( i + e )
        #p k
        if k >= 0 && i * 10 + e * 5 + k == c then
            puts "#{i} #{e} #{k}"
            break
        end
    end
end
puts "-1 -1 -1"

        
    