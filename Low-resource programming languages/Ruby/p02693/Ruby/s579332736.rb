Z=gets.to_i
A,B=gets.split.map(&:to_i)
puts (A..B).any? {|r| r % Z == 0 } ? "OK" : "NG"