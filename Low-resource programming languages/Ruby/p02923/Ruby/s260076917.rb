a = gets().to_i
b = gets().split(" ")

for i in 0..a-1
  b[i] = b[i].to_i
end

c = []

for i in 0..a-1
  if b[i+1]!=nil
    if b[i]>=b[i+1]
      c.push(1)
    else
      c.push(0)
    end
  end
end

t = []

c.chunk { |u|
 u==1 
}.each{ |r, w|
  if r==true
    t.push(w.length)
  end
}

f = t.max
if f==nil
  f = 0
end

p f