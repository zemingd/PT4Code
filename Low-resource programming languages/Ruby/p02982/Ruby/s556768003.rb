N, D = gets.split(' ').map(&:to_i)
X = []
count = 0

def tf(a, b)
  s = 0
  a.length.times { |i| s = s + ((a[i] - b[i])**2) }
  ans = s**(1 / 2.0)
  return ans.to_s =~ /^[0-9]+.0$/ ? 1 : 0
end

N.times do |i|
  p = gets.chomp.split(' ').map(&:to_i)
  X.push(p)
end
N.times do |n|
  next if n == 0
  a = X[n]
  n.times { |b| count = count + tf(X[b], a) }
end

puts "#{count}"
