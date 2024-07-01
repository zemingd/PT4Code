x,y,z,k = $stdin.gets.split.map(&:to_i)
a_ary = $stdin.gets.split.map(&:to_i)
b_ary = $stdin.gets.split.map(&:to_i)
c_ary = $stdin.gets.split.map(&:to_i)
ab = []
x.times do |a|
  y.times do |b|
    ab.push(a_ary[a]+b_ary[b])
  end
end
ab.sort!.reverse!
result = []
[ab.size,k].min.times do |i|
  z.times do |j|
    result.push(ab[i]+c_ary[j])
  end
end
result.sort!.reverse!
k.times do |i|
  puts result[i]
end
