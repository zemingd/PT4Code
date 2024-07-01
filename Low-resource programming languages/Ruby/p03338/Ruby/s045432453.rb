N = gets.to_i
S = gets.chomp.split("")
max = 0
(N-1).times do |i|
  x = S[0..i].uniq
  y = S[i+1..-1].uniq
  max = (x&y).length if max < (x&y).length
end
puts max
