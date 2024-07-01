H, W = gets.chomp.split(" ").map(&:to_i)
S = [Array.new(W+2, '.')]
H.times{
  S << gets.chomp.chars.unshift('.').push('.')
}
S << Array.new(W+2, '.')

ans = true
(1..H).each{|i|
  l = S[i]
  (1..W).each{|j|
    if l[j] == '#' then
      (ans = false; break) if S[i-1][j] == '.' && S[i+1][j] == '.' && S[i][j-1] == '.' && S[i][j+1] == '.'
    end
  }
  break if not ans
}

puts ans ? 'Yes' : 'No'
