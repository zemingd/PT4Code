n,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort
b = []
c = []
bc = []
m.times do |i|
  b[i],c[i] = gets.chomp.split(" ").map(&:to_i)
  bc.push([b[i],c[i]])
end
bc.push([0,0])
bc.sort_by!{|x| -x[1]}
i = 0
j = 0
loop = true
while a[i] < bc[j][1] && j < m
  bc[j][0].times do
    if a[i] < bc[j][1] && loop
      a[i] = bc[j][1]
      i += 1 if loop
      if i >= n
        i = n-1
        loop = false
      end
    end
  end
  j += 1
end
puts a.inject(:+)