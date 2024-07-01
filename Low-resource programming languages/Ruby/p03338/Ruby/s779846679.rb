N = gets.to_i
S = gets.chomp

max_n = 0
(1...N).each do |i|
  cnt = 0
  S[0...i].chars.uniq.each do |c|
    cnt += 1 if S[i..(N-1)].include?(c)
  end
  max_n = cnt if cnt > max_n
end
puts max_n