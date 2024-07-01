N,K = gets.split.map(&:to_i)
D = gets.strip.split.map(&:to_i)
n = N 
a = 0
while a == 0
    if n.to_s.split('').map{|s| s.to_i}.none?{|x| D.any?{|y| y == x}}
        a += 1
    end
    n += 1
end

puts n-1