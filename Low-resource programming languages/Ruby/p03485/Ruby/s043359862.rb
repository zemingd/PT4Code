numbers = STDIN.gets.split.map {|s| s.to_f }
answer  = ((numbers[0] + numbers[1]) / 2).ceil.to_i
puts answer
