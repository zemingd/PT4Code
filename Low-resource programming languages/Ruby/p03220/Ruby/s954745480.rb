n = gets.to_i
t, a = gets.chomp.split.map(&:to_i)
hs = gets.chomp.split.map(&:to_i) 

hsAvg = []
hs.map {|n| hsAvg << t - (n * 0.006)}

diff = []
hsAvg.map {|n| diff << (a - n).abs}

p diff.index(diff.min) + 1

