n, m = gets.split.map(&:to_i)
p = []
y = []
pi = Hash.new{|h,k| h[k] = []}
m.times do
  pp, yy = gets.split.map(&:to_i)
  p << pp
  y << yy
  pi[pp] << yy
end

yh = Hash.new{}
pi.keys.each do |k|
  pi[k].sort!
  pi[k].each_with_index do |yy, i|
    yh[yy] = i+1
  end
end

m.times do |i|
  pp = p[i]
  yy = y[i]
  o = yh[yy]
  puts "%06d%06d" % [pp, o]
end
