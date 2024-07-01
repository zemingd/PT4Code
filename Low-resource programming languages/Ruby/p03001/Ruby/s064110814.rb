W, H, x, y = gets.strip.split.map(&:to_i)

def chmax(a, b) a > b ? a : b end
def chmin(a, b) a < b ? a : b end

a1 = chmin(x, W - x) * H
a2 = W * chmin(y, H - y) 

puts "#{chmax(a1, a2)}.000000 #{a1.eql?(a2) ? 1 : 0}"
