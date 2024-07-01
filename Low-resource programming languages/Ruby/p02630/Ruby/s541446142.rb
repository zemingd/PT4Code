N = gets.to_i
As = gets.split.map(&:to_i)
Q = gets.to_i
BCs = readlines.map{_1.split.map(&:to_i)}

s = As.sum
h = As.each_with_object(Hash.new(0)){|a, h| h[a] += 1}
BCs.each do |b, c|
  if n = h.delete(b)
    s += (c - b)*n
    h[c] += n
  end
  puts s
end