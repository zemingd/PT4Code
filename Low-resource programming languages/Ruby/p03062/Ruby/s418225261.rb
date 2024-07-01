n, a=$<.map{|m|m.split.map(&:to_i)}
maxs = a[0]
maxr = - a[0]
a[1..-2].each do |ai|
  tmaxs = maxs
  tmaxr = maxr

  maxs = [tmaxs + ai, tmaxr - ai].max
  maxr = [tmaxs - ai, tmaxr + ai].max
end
maxs += a[-1]
maxr -= a[-1]
p [maxr, maxs].max
