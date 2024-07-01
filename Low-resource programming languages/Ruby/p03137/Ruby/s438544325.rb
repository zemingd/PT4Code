n, m = gets.split(" ").map(&:to_i)
xs = gets.split(" ").map(&:to_i)
xs.sort!

hoge = []

xs.each.with_index do |x,i|
  if i != 0
    hoge << {val: (x - xs[i-1]).abs, index: i}
  end
end

if hoge == []
  puts 0
  exit
end

hoge.sort!{|a,b| a[:val] <=> b[:val]}.reverse!
if n == 1
  puts (xs[0] - xs[-1]).abs
  exit
else
  use = hoge.take(n-1)
  inds = use.sort{|a,b| a[:val] <=> b[:val]}.map{|a| a[:index]}.sort
end

group = []
before = 0
inds.each do |i|
  current = xs[before...i]
  group << current
  before = i
end
group << xs[inds[-1]..-1]

count = group.reduce(0) do |a,e|
  a+=(e[0]-e[-1]).abs
end

puts count