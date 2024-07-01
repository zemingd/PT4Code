h,w=gets.split.map(&:to_i)
m=$<.map{|s|s.chomp.split('')}
rw=m.map{|m|m.map{0}}
rh=m.map{|m|m.map{0}}.transpose

m.transpose.map{|m|m+['#']}.each_with_index do |e, i|
  t=0
  e.each_with_index do |ee, ii|
    if ee == '.'
      t += 1
    else
      rh[i].fill(t,ii-t...ii)
      t=0
    end
  end
end

rh=rh.transpose
maxe = 0

m.map{|m|m+['#']}.each_with_index do |e, i|
  t=0
  e.each_with_index do |ee, ii|
    if ee == '.'
      t += 1
    else
      g = rh[i][ii-t...ii].max.to_i
      maxe = g + t if g+t > maxe
      rw[i].fill(t,ii-t...ii)
      t=0
    end
  end
end

p maxe-1
