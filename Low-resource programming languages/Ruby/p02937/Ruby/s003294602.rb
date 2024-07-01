S, T = readlines.map(&:chomp)

i = ->(c){(S*2).chars.map.with_index{|s, i| s == c ? i : nil}.compact}
h = T.split('').uniq.each_with_object({}){|c, h| h[c] = i[c]}
if h.values.any?(&:empty?)
  puts -1
else
  l = S.length
  ans = T.chars.inject(0) do |r, c|
    j, k = r.divmod(l)
    r = h[c].bsearch{|v| v >= k} + j*l
  end
  puts ans + 1
end