N = gets.to_s

def fil(l)
    l.include?(3) and l.include?(5) and l.include?(7)
end

a = 3
list = []

while a <= N.size
    list = list + [7,5,3].repeated_permutation(a).to_a.select{|x| fil(x)}
    a = a + 1
end

list2 = list.map{|x| x.join("").to_i}
list3 = list2.select{|x| x <= N.to_i}
p list3.size