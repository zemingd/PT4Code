a = gets.to_i
origin = gets.split.map(&:to_i).sort
n = gets.to_i
data = n.times.map { gets.strip.split.map(&:to_i) }
result = Array.new(n, 0)
gou = origin.sum

(0..n-1).each do |i|
  origin = origin.sort
  before = data[i][0]
  after = data[i][1]
  cnt = 0
  origin.each_with_index do |x, index|
    if x == before
      origin[index] = after
      cnt += 1
    end
    if x > before
      break
    end
  end
  gou = gou + (after - before) * cnt
  result[i] = gou
end

puts result