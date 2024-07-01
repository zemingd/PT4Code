n,C = gets.chomp.split(" ").map(&:to_i)
s = []
t = []
c = []
max_t = 0
n.times do |i|
  s[i],t[i],c[i] = gets.chomp.split(" ").map(&:to_i)
  max_t = t[i] if max_t < t[i]
end
arr = Array.new(C+1){Array.new(max_t+1,0)}
n.times do |i|
  s[i].upto(t[i]) do |j|
    arr[c[i]][j] += 1 if arr[c[i]][j] == 0
  end
end
max = 0
max_t.times do |i|
  sum = 0
  C.times do |j|
    sum += arr[j+1][i+1]
  end
  max = sum if max < sum
end
puts max