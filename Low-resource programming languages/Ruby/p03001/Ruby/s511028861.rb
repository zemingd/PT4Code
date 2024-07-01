W,H,x,y = gets.split.map(&:to_i)
S = W * H / 2.0
g = [W - 2 * x, H - 2 * y].all?(&:zero?)
puts "#{S} #{g ? 1 : 0}"