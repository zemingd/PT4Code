require 'set'
N = gets.to_i
S = gets.chomp

def common_char_nums(a, b)
  (Set.new(a.scan(/./)) & Set.new(b.scan(/./))).size
end

puts(
  (0...N).map do |i|
    common_char_nums(S[0...i], S[i...N]) 
  end.max
)
