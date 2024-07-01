H, N = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
A.each do |attack|
  H = H - attack
  break if H <= 0
end
puts H > 0 ? 'No' : 'Yes'