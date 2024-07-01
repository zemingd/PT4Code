N,K,*hs=$<.read.split.map(&:to_i)
hs.sort!

i = 0
j = K-1
min = 10**9
while j < N
  n = hs[j] - hs[i]
  min = n if n < min
  i += 1
  j += 1
end

puts min
