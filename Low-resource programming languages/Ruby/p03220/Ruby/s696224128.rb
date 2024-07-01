N =gets.to_i
T,A = gets.strip.split.map(&:to_i)
H = gets.strip.split.map(&:to_i)

minh = 100000000
minhi = 0

(0..N-1).each do |i|
  if (T - 0.006 * H[i] - A).abs < minh
    minhi = i
    minh = (T - 0.006 * H[i] - A).abs
  end
end

puts minhi +1