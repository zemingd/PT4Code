a = gets.to_i
ary = gets.chomp.split("")
al = ("A".."Z").to_a
new_al =[]
al.index("A")
ary.each do |j|
    k = (al.index(j) + a)%26
    new_al << al[k]
end
puts new_al.join