a = gets.to_i
origin = gets.split.map(&:to_i)
n = gets.to_i
data = n.times.map { gets.strip.split.map(&:to_i) }
result = Array.new(n, 0)

(0..n-1).each do |i|
  before = data[i][0]
  after = data[i][1]
  if origin.include?(before != data[i][0])
  	gou = origin.sum
    result[i] = gou
  else
    origin = origin.map {|x| x==before ? after : x}
    gou = origin.sum
    result[i] = gou
  end
end

puts result