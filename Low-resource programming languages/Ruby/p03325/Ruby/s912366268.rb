def idxoftwo(n)
  i = 0
    while n%2==0
      n = n/2
      i +=1
    end
    return i
end

n = gets.to_i
array = gets.split(" ").map{|a| a.to_i}
ary = []
answer =0
for i in(0..n-1)
  answer += idxoftwo(array[i])
end

puts answer
