n,m = gets.split(' ').map(&:to_i)
can_pass = [] 
m.times do |a|
    l,r = gets.split(' ').map(&:to_i)
    can_pass<< (l..r).to_a
end
exisited = can_pass[0]
if can_pass.length >1
    1.upto(can_pass.length-1) do |a|
        exisited = can_pass[a] & exisited
    end
   
end
puts exisited.length