while s = gets do
  puts s.split(/\s/).map(&:to_i).inject(:+).to_s.size
end