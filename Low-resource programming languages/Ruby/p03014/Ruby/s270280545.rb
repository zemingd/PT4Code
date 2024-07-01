h,w=gets.split.map(&:to_i)
m=$<.map{|s|s.chomp}
rw=Array.new(h).map(&:to_s)
m.each_with_index do |e, i|
  t=0
  (0..w).each do |ii|
    if e[ii] == '.'
      t += 1
    else
      rw[i] << t.to_s*t
      rw[i] << '0'
      t=0
    end
  end
end
