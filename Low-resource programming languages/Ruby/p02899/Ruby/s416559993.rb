n = gets.to_i
arr = gets.split.map(&:to_i)
hash = {}
n.times do |i|
  hash[i+1] = arr[i]
end
hash.sort_by {|k, v| v }.each do |a|
  print "#{a[0]} "
end
