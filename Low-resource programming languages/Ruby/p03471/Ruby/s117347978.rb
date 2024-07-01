n, y = gets.chomp.split(" ").map(&:to_i)
# 難しい
a = [n,y / 10000].min
b = [n,y / 5000].min
c = y / 1000
(0..a).each do |i|
    (0..c).each do |e|
        k = n - ( i + e )
        if k >= 0 && i * 10 + e * 5 + k == c then
            puts "#{i} #{e} #{k}"
            exit
        end
    end
end
puts "-1 -1 -1"
