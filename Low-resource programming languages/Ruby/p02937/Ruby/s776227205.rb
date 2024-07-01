S, T = readlines.map(&:chomp)

h = S.each_char.with_index.with_object(Hash.new{|h, k| h[k] = []}){|(c, i), o| o[c] << i}
i, j = -1, 0
T.chars do |c|
  (puts -1; exit) if h[c].empty?
  i = h[c].bsearch{|v| v > i}
  unless i
    i = h[c].first
    j += 1
  end
end
puts S.length * j + i + 1