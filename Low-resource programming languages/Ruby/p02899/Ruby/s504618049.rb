n = gets.to_i
as = gets.split.map(&:to_i)
hash = {}

(0...n).each do |i|
  hash[as[i]] = i
end

Hash[hash.sort].values.each do |i|
  print "#{i + 1} "
end
puts ""
