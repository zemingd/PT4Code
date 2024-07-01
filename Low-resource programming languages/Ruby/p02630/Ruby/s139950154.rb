n = gets.to_i
as = gets.chomp.split(" ").map(&:to_i)
q = gets.to_i
bs = []
cs = []
q.times do |i|
  bs[i], cs[i] = gets.chomp.split(" ").map(&:to_i)
end

_as = as.group_by{|a| a}.map{ |k, v| {k => v.size}}.inject({}, :merge)
p _as

q.times{ |i|
  num = _as.delete(bs[i])
  if num
    _as[cs[i]] = (_as[cs[i]] || 0) + num
  end
  puts _as.map{|k,v| k * v}.sum
}
