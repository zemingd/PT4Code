=begin
a = gets.to_i
s = gets

if a < 3200
  puts "red"
else
  puts s
end
=end

=begin
b = gets.to_i
a = gets.split(" ").map{|x| x.to_f}
sum = 0.0
b.times do |i|
  sum += 1/a[i]
end
p 1 / sum
=end

=begin
n = gets.to_i
a = gets.split(" ").map{|x| x.to_f}

while true
  a.sort!
  a.push((a[0] + a[1]) / 2.0)
  a.delete_at(0)
  a.delete_at(0)
  break if a.size == 1
end

p a[0]
=end

nq = gets.split(" ").map{|x| x.to_i}
n = nq[0]
q = nq[1]

tree = Array.new()
count = Array.new(n, 0)

n.times do |i|
  tree.push(Array.new(1, i + 1))
end

(n - 1).times do |i|
  input = gets.split(" ").map{|x| x.to_i}
  tree[input[0] - 1].push(input[1])
end

n.times do |i|
  (tree[i].size - 1).times do |j|
    tree[i] += tree[tree[i][j + 1] - 1]
  end
end

n.times do |i|
  tree[i].uniq!
end

q.times do |i|
  input = gets.split(" ").map{|x| x.to_i}
  (tree[input[0] - 1].size).times do |j|
    pos = tree[input[0] - 1][j] - 1
    count[pos] += input[1]
  end
end

n.times do |i|
  print "#{count[i]} "
end
