str1 = gets.split
N,M = str1[0].to_i, str1[1].to_i

str1 = gets.chomp.split
a = []
i = 0
while i < N 
  a[i] = str1[i].to_i
  i += 1
end
a.sort!

b = []
i = 0
while i < M
  str1 = gets.split
  b[i] = str1[0].to_i, str1[1].to_i
  i += 1
end

b.sort_by! {|k, v| v }
b.flatten!

i = 0
j = N-1
k = M*2-1
x = 0
y = 0
answer = 0
while i < N
  if a[j] <= b[k]
    x = b.pop
    y = b.pop
    k -= 2
    if i+y < N
      answer += x*y
      i += y
    else
      y = N-i
      answer += x*y
      i += y
    end
    if k == -1
      k = 0
      b[0] = 0
    end
  else
    answer += a.pop
    i += 1
    j -= 1
  end
end

puts answer