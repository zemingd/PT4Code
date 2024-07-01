N, M = gets.split.map(&:to_i)
Ls = Array.new(2)
Rs = Array.new(2)


maxL = nil
minR = nil

M.times do |i|
  
  l, r = gets.split.map(&:to_i)
  maxL = l if maxL == nil || maxL < l
  minR = r if minR == nil || minR > r
  
end
#vdots = gets.to_i


puts (minR - maxL) + 1 
