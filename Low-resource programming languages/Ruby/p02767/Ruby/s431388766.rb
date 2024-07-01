n = gets.to_i
x = gets.split.map(&:to_i)
i = (0..101).min_by{|y| x.map{|x| (x-y)**2}.inject(&:+)}
puts x.map{|x| (x-i)**2}.inject(&:+)
