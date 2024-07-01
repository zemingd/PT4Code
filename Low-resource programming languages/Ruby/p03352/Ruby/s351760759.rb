X = gets.strip.to_i

def chmax(a, b) a > b ? a : b end

res = 0
X.times do |i|
  1000.times do |j| 
    tmp = (i + 1) ** j
    break if tmp > X
    res = chmax(tmp, res)
  end
end 
puts res
