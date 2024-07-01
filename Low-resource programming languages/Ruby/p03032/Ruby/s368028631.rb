(N, K), Vs = readlines.map{|l| l.split.map(&:to_i)}

k = [N, K].min
res =(0 .. k).flat_map do |l|
  (0 .. k - l).map do |r|
    vs = (Vs.first(l) + Vs.last(r)).sort
    d = [(vs.index(&:positive?) || l + r), K - l - r].min
    vs.drop(d).inject(0, :+)
  end
end
puts res.max