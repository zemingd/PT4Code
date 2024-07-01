W, H, X, Y = gets.split.map(&:to_i)

anss = [[(W-X)*H,X*H].min,[W*(H-Y),W*Y].min]
max = anss.max
multiple = anss.select{|i| i==max}.size > 1
puts "#{max} #{multiple ? 1 : 0}"