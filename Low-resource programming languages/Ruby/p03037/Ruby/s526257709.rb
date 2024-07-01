n, m = gets.chomp.split.map(&:to_i)
a = []
m.times do |hoge|
    z, x = gets.chomp.split.map(&:to_i)
    if hoge == 0 then 
        a = (z..x).to_a
    else
        a = a & ((z..x).to_a)
    end
end
puts a.size