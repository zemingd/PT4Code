def dp(d, score)
  if d == $n
    score = 0 if score % 10 == 0
  else
    score = [dp(d + 1, score), dp(d + 1, score + $s[d])].max
  end
  score
end

$n = gets.to_i
$s = $<.map(&:to_i)
p dp(0, 0)