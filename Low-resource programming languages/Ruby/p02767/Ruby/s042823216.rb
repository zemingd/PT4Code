N=gets.to_i
xs=gets.split.map(&:to_f)
puts xs.map{|e|(e-(xs.inject(&:+)/N))**2}.inject(&:+)