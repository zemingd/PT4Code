N = gets.to_i
x = []
k = 0
cnt = 0
N.times do
  x[k] = gets.strip.split("")
  k +=1
end
x.each_with_index do |item, i|
  x[i] = x[i].sort!
  x.each_with_index do |item, j|
    break if i == j
    cnt += 1 if x[i] == x[j].sort
  end
end
puts cnt