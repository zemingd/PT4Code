a,b,c = gets.to_s.split.map do |number|
  number.to_i
end
puts [b/a, c].min