N = gets.to_i
A = gets.split.map(&:to_i)
h = {}

N.times do |i|
  h[i] = A[i]
end

# 値順にソート
sh = h.sort_by{ | k, v | v }

sh.each do |a|
  print "#{a[0]+1} "
end
puts ""