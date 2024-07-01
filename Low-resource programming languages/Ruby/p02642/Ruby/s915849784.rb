gets
A = gets.split.map(&:to_i).sort
doubles = A.group_by(&:itself).select{|i,ary| ary.size>=2}.keys

prim = []
ans = 0
A.uniq.each do|a|
    next if prim.any?{|p| a%p==0}
    prim << a
    ans +=1 unless doubles.include? a
end

puts ans