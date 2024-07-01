n, m = gets.split(" ").map{|s| s.to_i}

everyones_favorits = nil
(1..n).each {
  favorits = gets.split(" ").map{|s| s.to_i}[1..-1]
  if everyones_favorits.nil?
    everyones_favorits = favorits
  else
    everyones_favorits = everyones_favorits.select{ |favorit| favorits.include?(favorit) }
  end
}

puts(everyones_favorits.size)
