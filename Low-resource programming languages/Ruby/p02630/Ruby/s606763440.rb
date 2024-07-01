n = gets.to_i
as = gets.chomp.split(" ").map(&:to_i)
_as = as.group_by{|a| a}.map{ |k, v| {k => v.size}}.inject(Hash.new(0), :merge)
q = gets.to_i
q.times do |i|
  b, c = gets.chomp.split(" ").map(&:to_i)
  num = _as.delete(b)
  if num
    _as[c] += num
  end
  puts _as.map{|k,v| k * v}.sum
end
