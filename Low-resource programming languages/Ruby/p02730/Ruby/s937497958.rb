s = gets.chomp
n = s.length

def check(word)
  word = word.to_s
  size = word.length / 2
  return ( word[0..size] == word.reverse[0..size] )
end

ans = "No"
ans = "Yes" if check(s) && check(s[0..((n-1)/2)-1]) && check(s[((n+3)/2)-1..-1])
puts ans