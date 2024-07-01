N=gets.to_i
A=gets.split.map(&:to_i)

attend_order=[]

(1..N).each {|i|
    attend_order[A[i-1]-1]=i
}

puts attend_order.join(' ')
