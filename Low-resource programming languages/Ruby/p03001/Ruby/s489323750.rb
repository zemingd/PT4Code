W,H,x,y = gets.split.map(&:to_i)
area = (W * H / 2).to_f
synmmetric = 0
if x*2 == W && y*2 == H
  synmmetric = 1
end
puts "#{area} #{synmmetric}"