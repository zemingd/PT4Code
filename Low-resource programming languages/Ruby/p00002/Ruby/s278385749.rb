while line = gets
  p line.split.map(&:to_i).inject{|num,sum| sum += num}.to_s.size
end