n, m = gets.chomp.split.map(&:to_i)
hs = Hash.new
ar = []

n.times do
  a, b = gets.chomp.split.map(&:to_i)
  hs[a] ||= []
  hs[a] << b
end

res = 0
m.times do |i|
  ar.push(*hs[i + 1])
  if !ar.empty?
    ar.sort!
    res += ar.pop
  end
end
puts res