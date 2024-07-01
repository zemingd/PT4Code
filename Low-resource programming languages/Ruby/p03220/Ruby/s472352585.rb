n=gets.to_i
t,a=gets.split.map &:to_i
h=gets.split.map(&:to_i)
min=1000
mini=0
n.times do|i|
  temp=(a-(t-h[i]*0.006)).abs
  if min > temp
    min = temp
    mini = i
  end
end
puts mini+1
