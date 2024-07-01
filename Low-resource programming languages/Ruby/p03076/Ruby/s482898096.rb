x = (1..5).map { |e| gets.to_i }
s = x.map{|e| (e/10.0).ceil*10}.inject(:+)
p = 10 - ( x.map{|e| e % 10}.reject(&:zero?).min || 10)
p s-p
