n = gets.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)
pi = nil
qi = nil
cnt = 1
(1..n).to_a.permutation do |s|
  if s == p
    pi = cnt
  end
  if s == q
    qi = cnt
  end
  break if pi != nil && qi != nil
  cnt += 1
end
puts (qi - pi).abs