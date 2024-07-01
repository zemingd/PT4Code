N = gets.chomp.to_i
S = gets.chomp.split('').map{|s| s == 'W' ? -1 : 1}

results = S.map.with_index do |_, i|
result = 0
  S.each_with_index do |member, j|
    result += 1 if member * (i - j) < 0
  end
  result
end

puts results.min
