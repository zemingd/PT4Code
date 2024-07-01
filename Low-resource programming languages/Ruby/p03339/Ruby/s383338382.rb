N = gets.chomp.to_i
S = gets.chomp.split('').map{|s| s == 'W' ? -1 : 1}

min = N - 1
S.each_with_index do |leader, i|
  after = S.map.with_index { |_, j| j < i ? 1 : -1 }
  result = 0
  S.each_with_index do |member, j|
    next if i == j
    result += 1 if member * after[j] == -1
  end
  min = [min,result].min
end

puts min
