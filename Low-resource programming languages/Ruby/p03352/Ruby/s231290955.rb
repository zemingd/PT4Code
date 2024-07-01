i = gets.to_i
ary = []
n = 0
t = 1
while i>=t do 
       
      ary << n*n
      n +=1
      t = n*n
end
p ary.max