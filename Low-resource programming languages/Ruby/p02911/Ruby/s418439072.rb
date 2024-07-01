n, k, q = gets.chomp.split.map(&:to_i)
a = []
q.times do
  a << gets.to_i
end

score = []
n.times do
  score << k
end

q.times do |i|
  score[a[i]-1] += 1
end

n.times do |i|
  tmp = score[i]-q
  if tmp > 0
    print "Yes\n"
  else
    print "No\n"
  end
end