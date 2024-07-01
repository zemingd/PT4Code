while s = gets
  puts s.split(" ").map(&:to_i).inject(:+).to_s.size
end