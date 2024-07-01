N = gets.chomp.to_i
lines = gets.chomp.split.map(&:to_i).sort.reverse

count = 0
(N-2).times do |i|
  a = lines[i]
  nokori_lines =  lines[i+1..N]
  kouhos = nokori_lines.combination(2)
  count += kouhos.count { |pair| a < pair[0] + pair[1] }
end
puts count
