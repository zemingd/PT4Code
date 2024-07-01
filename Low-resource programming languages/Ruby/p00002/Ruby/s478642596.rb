while n = gets
  (a,b) = n.chomp.split.map(&:to_i)
  p (a+b).to_s.length
end
