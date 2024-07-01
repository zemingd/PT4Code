S = gets.chomp
T = gets.chomp
N = S.size

ans = -1
if T.chars.uniq.all? {|c| S.include?(c) }
  0.step do |i|
    T.slice!(0) if T[0] == S[i%N]
    if T == ""
      ans = i + 1
      break
    end
  end
end
puts ans