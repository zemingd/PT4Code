#a = gets.split(" ").map{|x| x.to_i}
=begin
n = gets.to_i
count = 0
n.times do |i|
  if((i + 1) % 2 == 1)
    count += 1
  end
end
p count.to_f / n.to_f
=end

=begin
nk = gets.split(" ").map{|x| x.to_i}
N = nk[0]
K = nk[1]

h = gets.split(" ").map{|x| x.to_i}
count = 0

N.times do |i|
  if(K <= h[i])
    count += 1
  end
end
p count
=end

N = gets.to_i
a = gets.split(" ").map{|x| x.to_i}

array = Array.new(N)
N.times do |i|
  array[a[i] - 1] = i + 1
end
N.times do |i|
  print "#{array[i]} "
end
