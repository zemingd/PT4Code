s = gets.chomp

chars = s.chars
candidates = []
chars.each_with_index do |c, i|
  break if chars[i+2].nil?
  candidates << (753 - chars[i..i+2].join.to_i).abs
end

puts candidates.min