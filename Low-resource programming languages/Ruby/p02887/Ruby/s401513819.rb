n = gets.to_i
d = gets.strip.split("")
c = 0
buf = nil
d.each do |e|
  if buf != e
    buf = e
    c+=1
  end
end
p c