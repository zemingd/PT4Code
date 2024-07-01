
 h, w = gets.split.map(&:to_i)
while (h != 0 && w != 0)
 h.times{
     puts "#" * w
}
puts
end

