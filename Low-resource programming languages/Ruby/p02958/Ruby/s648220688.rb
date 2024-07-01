N = gets.chomp.to_i
S = gets.split.map(&:to_i)

cnt = 0
S.each_with_index do |el, i|
  cnt += 1 unless el == i + 1
end

puts [0, 2].include?(cnt) ? 'YES' : 'NO'