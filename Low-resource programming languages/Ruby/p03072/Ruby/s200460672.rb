N = gets.to_i
H = gets.split.map(&:to_i)

mm = 0
tot = 0
H.each do |h|
  if h >= mm 
    tot += 1 
    mm = h  
  end 
end
puts tot