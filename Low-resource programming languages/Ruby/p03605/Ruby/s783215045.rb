gets
list = []
while s = gets
    s = s.to_i
    list[s] = !list[s]
end
puts list.count{|i| i }
