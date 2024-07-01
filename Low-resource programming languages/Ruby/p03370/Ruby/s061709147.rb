n,x = gets.split.map(&:to_i)
m =[]
count = 0
for i in 0..n - 1
    m[i] = gets.to_i
end
m = m.sort!
for i in 0..n - 1
   x = x - m[i]
    count += 1
end
loop{
       if x < m[0]
        break
    end 
    x = x - m[0]
    count += 1
}
puts count
  