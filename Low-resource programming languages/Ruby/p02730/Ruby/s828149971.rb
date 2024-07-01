S = gets.chomp
n = S.size

def kaibun?(str)
  str.reverse == str
end

result = [S, S[0...((n - 1) / 2)], S[((n + 1) / 2)..-1]].all? { |s| kaibun?(s) }
puts result ? 'Yes' : 'No'
