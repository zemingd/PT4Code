(N, K), Vs = readlines.map{|l| l.split.map(&:to_i)}

k = [N, K].min
res =(0 .. k).flat_map do |n|
  (0 .. n).map do |l|
    vs = (Vs.first(l) + Vs.last(n - l)).sort
    d = [(vs.index(&:positive?) || n), k - n].min
    vs.drop(d).inject(:+) || 0
  end
end
puts res.max