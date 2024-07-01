h, w = gets.split.map!(&:to_i)
return if h == 0 || w == 0
h.times do |i|
  w.times do |j|
    print "#"
  end
  puts
end