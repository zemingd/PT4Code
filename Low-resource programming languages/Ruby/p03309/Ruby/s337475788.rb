N = gets.to_i
a = gets.split.map(&:to_i)
sum = 0
for i in 0..a.length-1
  a[i] = a[i] - (i+1)
  sum += a[i]
end
a = a.sort

def bad(a,b)
  sum = 0
  for i in 0..a.length-1
    sum += (a[i]-b).abs
  end
  sum
end

if N==1
  puts 0
else
  puts [bad(a,a[(N-1)/2]),bad(a,a[(N-1)/2+1])].min
end
