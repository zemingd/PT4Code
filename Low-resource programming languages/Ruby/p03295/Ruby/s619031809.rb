n, m = gets.strip.split.map(&:to_i)
ab = readlines.map {|line| line.strip.split.map(&:to_i) }
ab = ab.sort_by(&:last)

result = 0
until ab.empty?
  cb = ab.shift.last
  cut = cb
  result += 1
  ab = ab.reject {|a, _| a < cut }
end

p result
