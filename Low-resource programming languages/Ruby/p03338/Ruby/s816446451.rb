n = gets.chomp.to_i
a = []
a = gets.split("")
b = []
c = []
cnt = []
t = 0
alp = ('a'..'z').to_a
for i in 0..n-1
t = 0
b = []
c = []
  for j in 0..i
  b.push(a[j])
  end
  for j in i+1..n-1
  c.push(a[j])
  end
 b.uniq!
 c.uniq!
  #puts b.join("")
  #puts c.join("")
  for j in 0..25
  #puts j
  #puts t
  #puts alp[j]
    if b.include?(alp[j])
        if c.include?(alp[j])
      t = t + 1
        end
    end
  end
  #puts t
  cnt.push(t)
end
 
#puts cnt.join (" ")
puts cnt.max