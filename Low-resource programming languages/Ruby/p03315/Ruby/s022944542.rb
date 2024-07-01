k = gets.to_i

def sunuke(num)
  num.to_f/num.to_s.chars.map(&:to_i).inject(:+)
end

list = []
pos = 0
counter = 1
res = loop.lazy.flat_map do
  num = (list.last||0) + counter * 10**pos
  p [num, counter]
  if sunuke(num) <= sunuke(num + (counter * 10**pos))
    counter += 1
    range = num.to_s.size >= pos ? (0..8) : (0..9)
    list = range.map { |i| num + i * 10**pos}
  else
    pos += 1
    counter = 1
    []
  end
end

puts res.first(k+1)