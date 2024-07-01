N=gets.chomp.to_i
A=gets.chomp.split.map(&:to_i)
B=gets.chomp.split.map(&:to_i)
C=gets.chomp.split.map(&:to_i)
satisfaction=0
lastdish=nil

A.each {|dish_id|
    satisfaction+=B[dish_id-1]
    if lastdish==dish_id-1
        satisfaction+=C[lastdish-1]
    end
    lastdish=dish_id
}

puts satisfaction