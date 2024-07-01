N,*xs=$<.read.split.map(&:to_i)

pt = (xs.inject(&:+) / xs.length.to_f).round
ret = 0
xs.each do |x|
  ret += (x-pt)**2
end

p ret
