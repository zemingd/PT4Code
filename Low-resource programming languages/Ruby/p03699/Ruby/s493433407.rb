N = gets.to_i
SS = readlines.map(&:to_i)
a = []
(1..N).each do |i|
  SS.combination(i).each do |ss|
    a << ss.inject(:+)
  end
end
p(a.sort_by { |e| -e }.detect { |e| e % 10 != 0 }.to_i)