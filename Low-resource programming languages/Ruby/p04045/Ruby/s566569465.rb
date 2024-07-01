n,k = gets.split.map(&:to_i)
d = gets.split.map(&:to_i)
while true
  f = false
  n.to_s.chars.each do |s|
    if d.include?(s.to_i)
      n += 1
      f = true
      break
    end
  end

  break if f == false
end
puts n