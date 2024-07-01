w, h, n = gets.split.map(&:to_i)
f = h.times.map{Array.new(w, true)}
n.times{
  x, y, a = gets.split.map(&:to_i)
  case a
  when 1 then
    d = Array.new(x, false)
    h.times{|i| f[i][0...x] = d}
  when 2 then
    d = Array.new(w-x, false)
    h.times{|i| f[i][x...w] = d}
  when 3 then
    d = Array.new(w, false)
    (0...y).each{|i| f[i] = d}
  when 4 then
    d = Array.new(w, false)
    (y...h).each{|i| f[i] = d}
  end
}
puts f.map{|d|d.count{|i|i}}.reduce(:+)
