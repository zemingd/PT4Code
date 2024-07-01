while d = gets
  puts d.scan(/\d+/).map(&:to_i).inject(:+).to_s.size
end