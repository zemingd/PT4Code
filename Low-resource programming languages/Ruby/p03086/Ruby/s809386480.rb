S = gets.chomp.chars
N = S.size
ans = 0
(0...N).each do |i|
  (i...N).each do |j|
    if S[i..j].all? { |ch| ['A', 'C', 'G', 'T'].include?(ch) }
      size = j - i + 1
      ans = size if size > ans
    end
  end
end
puts ans