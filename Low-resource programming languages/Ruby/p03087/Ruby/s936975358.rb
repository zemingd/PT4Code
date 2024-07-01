re = /AC/

n, q = gets.split.map(&:to_i)
s = gets.strip

ranges = q.times.map do
  l, r = gets.split.map(&:to_i)
  Range.new(l-1, r-1)
end

ranges.each { |r| p s[r].scan(re).size }
