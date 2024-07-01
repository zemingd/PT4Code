n,x = gets.chomp.split(" ").map(&:to_i).sort
ary = []
n.times do |k|
     k = gets.to_i
     ary << k
    x = x-k
end
p  n + x/ary.min