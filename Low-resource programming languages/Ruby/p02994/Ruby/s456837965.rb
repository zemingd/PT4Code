N,L=gets.split.map(&:to_i)

ap=Array.new(N)
N.times do |i|
  ap[i] = L+i
end
sum = ap.inject(:+)
ans = 0
t = Float::INFINITY
ap.each do |a|
  if t > a.abs
    t = a.abs
    ans = sum - a
  end
end
p ans