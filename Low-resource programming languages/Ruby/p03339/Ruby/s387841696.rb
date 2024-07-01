# Your code here!

a = gets.chomp.to_i
b = []
b = gets.chomp.split("")
#puts a
#puts b.join("")
t = 0
cnt = 3 * 10**5
for i in 0..a-1
  t = 0
  if i == 0
    for j in 1..a-1
      if b[j] != "W"
          t = t+1
      end
    end
    #puts "#{t} 0"
    #cnt.push(t)
  end
  if i == a-1
    for j in 0..i-1
      if b[j] != "E"
          t = t + 1
      end
    end
    #puts "#{t} a-1"
    #cnt.push(t)
  end
  if i >= 1 && if i<=a-2
    for j in 0..i-1
      if b[j] != "E"
          t = t + 1
      end
    end
    for j in i+1..a-1
      if b[j] != "W"
          t = t+1
      end
    end
    #puts "#{t} #{i}"
    if t <= cnt
        cnt = t
    end
  end
end
end
puts cnt
    
  