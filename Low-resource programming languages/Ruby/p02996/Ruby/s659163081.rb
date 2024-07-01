N = gets.to_i
AB = $<.map{|s|
  s.split.map &:to_i
}
AB.sort_by!{|a, b| b }

time = 0
puts AB.any?{|a, b|
  time += a
  time > b
} ? :No : :Yes