a = gets.to_i
ary = gets.split("")
al = ("A".."Z").to_a
new_al =[]
ary.each do |n|
     k = (al.index(n) + a)%26
     new_al << al[k]
end
puts new_al.join