N, *AS = $stdin.read.split.map(&:to_i)
ary = Array.new(N*2)
l = N-1
r = N
N.times do |i|
  if i.even?
    ary[r] = AS[i]
    r += 1
  else
    ary[l] = AS[i]
    l -= 1
  end
end
ary.compact!
ary.reverse! if N.odd?
puts ary.join(' ')
