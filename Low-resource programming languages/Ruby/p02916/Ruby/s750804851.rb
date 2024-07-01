n=gets.chomp!.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

cc = 0
for i in 0..n-1 do
  if a[i].to_i == a[i+1].to_i - 1
    cc += c[a[i]-1]
    #p a[i]
    #p cc
  end
end

cb = b.inject(:+)
#p cb

p cb + cc