n,k=gets.split(' ').map(&:to_i)
h=gets.split(' ').map(&:to_i)

h.sort!.reverse!
count = 0
if k>=n
  count=0
else
  for i in k..n-1
    count+=h[i]
  end
end

puts count
