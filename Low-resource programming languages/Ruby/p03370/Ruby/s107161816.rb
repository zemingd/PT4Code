n,x = gets.chomp.split(" ").map(&:to_i).sort
ary = []
n.times do |k|
    ary[k] = gets.chomp.to_i
end
 t = x - ary.sum 
 c = ary.min 
p t/c + n