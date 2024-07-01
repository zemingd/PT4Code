S, T = readlines.map(&:chomp)

l = S.length
h = T.split('').uniq.each_with_object({}){|c, h| h[c] = S.index(c)}
if h.values.any?(&:nil?)
  puts '-1'
else
  ans = T.chars.inject(0){|m, c| (0 .. 1.0/0).lazy.map{|n| h[c] + n*l}.find{|x| x > m}}
  puts ans + 1
end