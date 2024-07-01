A,B,C,D = gets.split.map(&:to_i)
puts ((A...B).to_a & (C...D).to_a).size