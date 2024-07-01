str = gets.split
N,K = str[0].to_i, str[1].to_i

str = gets.split
v1 = []
for x in 0...N
  v1[x] = str[x].to_i
end
v2 = v1.reverse

max = 0
a = 0

v = []
w = []
r = N<K ? N : K
s = 0
for x in 1..r
  s = x + (K-x)/2
  if s >= N
    v = v1
    v.sort!.reverse!
    w = v[0...(v.size-r)]
    a = w.inject(:+)
    if a > max
      max = a
    end
  else
    v = v1[0...s]
    v.sort!.reverse!
    w = v[0...x]
    a = w.inject(:+)
    if a > max
      max = a
    end
    v = v2[0...s]
    v.sort!.reverse!
    w = v[0...x]
    a = w.inject(:+)
    if a > max
      max = a
    end
    if s>=2
      for y in 0..s-2
        v = v1[0..y]+v2[0..(s-2-y)]
        v.sort!.reverse!
        w = v[0...x]
        a = w.inject(:+)
        if a > max
          max = a
        end
      end
    end
  end
end

puts max