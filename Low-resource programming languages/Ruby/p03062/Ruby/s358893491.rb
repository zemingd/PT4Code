N,*as=$<.read.split.map(&:to_i)

if as.count{|a|a < 0}.even?
  p as.map(&:abs).inject(&:+)
else
  as = as.map(&:abs)
  p as.inject(&:+) - as.min*2
end
