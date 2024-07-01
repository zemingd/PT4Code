N = gets.chomp.to_i

a = Array.new(N,2)
a[0] = 0

if N == 1
  puts 1
  exit
end

b = Array.new(N-1)

for x in 0...N-1
  str1 = gets.split
  u,v,w = str1[0].to_i, str1[1].to_i, str1[2].to_i
  b[x] = u*10000000 + v*10 + w%2
end

b = b.sort

for x in 0...N-1
  c = b[x]
  if a[c/10000000-1] != 2
    if c % 2 == 0
      a[(c/10)%1000000-1] = a[c/10000000-1]
    else
      a[(c/10)%1000000-1] = (a[c/10000000-1]+1)%2
    end
  else
    if c % 2 == 0
      a[c/10000000-1] = a[(c/10)%1000000-1]
    else
      a[c/10000000-1] = (a[(c/10)%1000000-1]+1)%2
    end
  end
end

puts a