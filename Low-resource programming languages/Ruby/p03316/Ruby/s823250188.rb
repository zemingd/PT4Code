n=gets.to_i
puts n%(n.to_s.chars.map(&:to_i).inject(:+))==0 ? :Yes: :No
