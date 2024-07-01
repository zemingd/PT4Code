a,b,c = gets.split.map(&:to_i).sort
puts c-b + b-a
