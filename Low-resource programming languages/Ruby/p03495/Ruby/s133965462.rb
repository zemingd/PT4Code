N, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

count = Array.new(200000)
as.each do |i|
    count[i] ||= 0
    count[i] += 1
end

count = count.compact.sort
if count.length <= K
    print 0
else
    print count[0...(count.length - K)].inject(:+)
end