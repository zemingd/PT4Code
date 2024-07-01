n,m = gets.strip.split.map(&:to_i)
ary = []
num = Array.new(n,0)
m.times do
  a,b = gets.stirp.split.map(&:to_i)
  unless ary.unshift([a,b].to_a).uniq.size == ary.size || ary.unshift([b,a].to_a).uniq.size == ary.size
    ary.unshift([a,b].to_a)
    ary.unshift([b,a].to_a)
    num[a-1] += 1
    num[b-1] += 1
end
puts num.max+1