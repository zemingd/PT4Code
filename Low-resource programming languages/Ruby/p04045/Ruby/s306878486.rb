a = []
a = gets.split.map(&:to_i)
b = []
b = gets.split.map(&:to_i)
C = [0,1,2,3,4,5,6,7,8,9]
for i in 0..b.length-1
  C.delete(b[i])
end
C.push(0)
C.sort!
d = 0
for g in 0..C.length
for h in 0..C.length-1
  for i in 0..C.length-1
    for j in 0..C.length-1
      for k in 0..C.length-1
        d = 10000*C[g]+1000*C[h]+100*C[i]+10*C[j]+C[k]
        if a[0] <= d
          puts d
          exit
        end
      end
    end
  end
end
end

    