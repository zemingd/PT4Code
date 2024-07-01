K = gets.chomp.split[1].to_i
S = gets
puts S.chars.map.with_index {|s, i| i == K ? s.downcase : s }.join('')
